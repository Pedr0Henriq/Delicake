import 'package:app_desafio/ui/home/home_screen.dart';
import 'package:flutter/material.dart';

// Cria um observador de rotas, que permite monitorar as mudanças de navegação (útil para saber quando uma tela foi empurrada, removida, etc.).Usado na função de _loadConfeitarias
final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      navigatorObservers: [routeObserver],
      // Adiciona o routeObserver como observador das rotas de navegação.
      // Isso é útil para detectar eventos como didPush, didPop etc.
    );
  }
}