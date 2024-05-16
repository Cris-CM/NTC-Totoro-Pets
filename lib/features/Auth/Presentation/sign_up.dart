import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:ntc_totoro_pets/core/colors/palette.dart';
import 'package:ntc_totoro_pets/widgets/TextFields/texfiel_user.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondo.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 70),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/pikachu.png',
                    height: 220,
                  ),
                  const TextfieldUser(
                    hintText: 'Email Address',
                    icon: Icons.mail_outline,
                  ).only(bottom: 45),
                  const TextfieldUser(
                    hintText: 'Password',
                    icon: Icons.lock_outline,
                    obscuretext: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
