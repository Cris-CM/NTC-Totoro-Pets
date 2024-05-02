import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ntc_totoro_pets/core/colors/palette.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/home');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Palette.black),
              child: const Text('hola'),
            ),
            Image.asset(
              'assets/images/pikachu.png',
            ),
          ],
        ),
      ),
    );
  }
}
