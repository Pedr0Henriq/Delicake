// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

// class Localizacao extends ChangeNotifier{
//   double lat = 0.0;
//   double long = 0.0;
//   String erro = '';

//   Future<void> getLocalizacao() async{
//     try {
//       final posicaoAtual = await _posicaoUsuario();
//       lat = posicaoAtual.latitude;
//       long = posicaoAtual.longitude;
//       print('Retorno válido');
//     } catch (e) {
//       print('Retorno inválido');
//       erro = e.toString();
//     }finally{
//       notifyListeners();
//     }
    
//   }

//   Future<Position> _posicaoUsuario() async{
//     LocationPermission permissao;

//     final bool isEnable = await Geolocator.isLocationServiceEnabled();

//     if(!isEnable){
//       return Future.error("Serviço de localização está desabilitado");
//     }
//     permissao = await Geolocator.checkPermission();

//     if(permissao == LocationPermission.denied){
//       permissao = await Geolocator.requestPermission();
//       if(permissao == LocationPermission.denied){
//         return Future.error('As permissões de localização estão negadas');
//       }
//     }

//     if(permissao == LocationPermission.deniedForever){
//        return Future.error('Não podemos solicitar permissão, pois os serviços de localização foram negados permanentemente');
//     }

//     return await Geolocator.getCurrentPosition();
//   }

// }