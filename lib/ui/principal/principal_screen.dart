import 'package:app_desafio/ui/_core/app_colors.dart';
import 'package:app_desafio/ui/confeitaria/confeitaria_screen.dart';
import 'package:app_desafio/ui/sign_up/cadastro_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:app_desafio/database/database.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({super.key});

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  late final db = context.read<AppDatabase>();
  List<Marker> _markers = []; //lista de marcadores no mapa
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadConfeitarias();
  }

/*Essa função ela busca as confeitarias no banco de dados e cria os marcados no mapa para cada uma. */
  void _loadConfeitarias() async {
    final lista = await db.getAllConfeitarias();
    final markers = lista.map((c) {
      return Marker(
          width: 80,
          height: 80,
          point: LatLng(c.latitude, c.longitude),
          child: GestureDetector(
              onTap: () async {
                await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return ConfeitariaScreen(
                    confeitaria: c,
                  );
                }));
                setState(() {
                  _loading = true;
                });
                _loadConfeitarias();
              },
              child: Image.asset(
                'assets/images/localizacao/localizacao_confeitaria.png',
                width: 40,
              )));
    }).toList();
    setState(() {
      _markers = markers;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: AppColors.backgroundColor,
          centerTitle: true,
          title: Text(
            'Encontre uma confeitaria',
            style: TextStyle(
              fontFamily: 'LobsterTwo',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.mainColor,
            ),
          ),
        ),
      ),
      body: Stack(children: [
        _loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : FlutterMap(
                options: MapOptions(
                  // Eu utilizei o fluttermap pois é uma api open-source, tive a opção do google_maps também, porém é paga. O flutter_maps me entregou um ótimo resultado, estou bem satisfeito
                  initialCenter: LatLng(-7.1153, -34.861),
                  initialZoom: 13,
                ),
                children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      subdomains: ['a', 'b', 'c'],
                      userAgentPackageName: 'com.exemplo.app',
                    ),
                    MarkerLayer(markers: _markers),
                  ]),
        Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () async {
                final result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return CadastroScreen(econfeitaria: true);
                }));
                if (result == true) {
                  _loadConfeitarias();
                }
              },
              child: Image.asset(
                'assets/buttons/botao_cadastro_confeitaria.png',
                width: 160,
                height: 140,
              ),
            )),
      ]),
    );
  }
}
