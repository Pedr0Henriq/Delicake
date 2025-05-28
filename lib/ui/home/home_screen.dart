import 'package:app_desafio/ui/_core/app_colors.dart';
import 'package:flutter/material.dart';

import '../../map/view/map_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 100.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 15.0,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/images/logo/logo.png',
                    width: 200,
                  ),
                ),
                Column(
                  spacing: 32.0,
                  children: [
                    Text(
                      'A doçura que faz seu dia mais leve',
                      style: TextStyle(
                        fontFamily: 'LobsterTwo',
                        fontSize: 18,
                        color: AppColors.mainColor,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return MapPage();
                          }));
                        },
                        child: Image.asset('assets/buttons/botao_bora.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
