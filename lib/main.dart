import 'package:app_desafio/database/database.dart';
import 'package:app_desafio/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/_core/app_colors.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AppDatabase(),
      dispose: (context, value) => value.close(),
      child: MaterialApp(
        home: const HomeScreen(),
        navigatorObservers: [routeObserver],
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.backgroundColor,
            foregroundColor: AppColors.mainColor,
          ),
        ),
      ),
    );
  }
}
