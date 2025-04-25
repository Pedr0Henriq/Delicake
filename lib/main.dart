import 'package:app_desafio/ui/home/home_screen.dart';
import 'package:flutter/material.dart';


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
    );
  }
}