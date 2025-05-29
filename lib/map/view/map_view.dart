import 'package:app_desafio/confectionery/view/confectionery_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../create/view/create_page.dart';
import '../../ui/confeitaria/confeitaria_screen.dart';
import '../bloc/map_bloc.dart';

class MapView extends StatefulWidget {
  const MapView({super.key});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Encontre uma confeitaria',
              style: TextStyle(
                fontFamily: 'LobsterTwo',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Stack(
            children: [
              state.isLoading
                  ? Center(child: CircularProgressIndicator())
                  : FlutterMap(
                    options: MapOptions(
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
                      MarkerLayer(
                        markers:
                            state.confeitarias.map((c) {
                              return Marker(
                                width: 80,
                                height: 80,
                                point: LatLng(c.latitude, c.longitude),
                                child: GestureDetector(
                                  onTap: () async {
                                    print(c.nome);
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return ConfectioneryPage(
                                            id: c.id,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/images/localizacao/localizacao_confeitaria.png',
                                    width: 40,
                                  ),
                                ),
                              );
                            }).toList(),
                      ),
                    ],
                  ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SafeArea(
                  minimum: EdgeInsets.only(bottom: 16),
                  child: FilledButton.icon(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CreatePage();
                          },
                        ),
                      );
                    },
                    icon: Icon(Icons.add),
                    label: Text('Cadastrar confeitaria'),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
