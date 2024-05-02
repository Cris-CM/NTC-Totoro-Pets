import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ntc_totoro_pets/core/colors/palette.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.blueGray,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Column(
            children: [
              Image.asset(
                'assets/images/pikachu.png',
                height: 100,
              ),
              const Text(
                'Hola Bienvenido',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 140),
                child: ElevatedButton(
                  onPressed: () {
                    context.go('/home');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Palette.green,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Empezar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Palette.white),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Palette.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
