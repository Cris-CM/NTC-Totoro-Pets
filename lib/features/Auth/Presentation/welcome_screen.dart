import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ntc_totoro_pets/core/colors/palette.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.waterGreen,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/pikachu.png',
                  height: 250,
                ).only(bottom: 70),
                const Text(
                  'Hola Bienvenido',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ).only(bottom: 25),
                const Text(
                  '"Mientras te sientas y te quedas nosotros\n                  saldremos y jugaremos"',
                  style: TextStyle(
                    fontSize: 20,
                    color: Palette.black,
                  ),
                ).only(bottom: 80),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 140),
                  height: 65,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/Signup');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Palette.green,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Empezar',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Palette.white),
                        ).only(right: 20),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Palette.white,
                        )
                      ],
                    ),
                  ),
                ).only(bottom: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Ya tienes una cuenta ?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.go('/home');
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Palette.green),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
