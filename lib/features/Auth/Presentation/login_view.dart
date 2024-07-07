import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntc_totoro_pets/core/colors/palette.dart';
import 'package:ntc_totoro_pets/widgets/custom_button.dart';
import 'package:ntc_totoro_pets/widgets/texfiel_user.dart';
import 'package:ntc_totoro_pets/widgets/texts.dart';
import 'package:sizer/sizer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fondo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/images/pikachu.png',
              width: 35.w,
            ).marginOnly(bottom: 2.h),
            const Texts.bold(
              'LOGIN',
              fontSize: 25,
              color: Palette.black,
            ).marginOnly(bottom: 5.h),
            const TextfieldUser(
              hintText: 'Email Address',
              icon: Icons.mail_outline,
            ).marginOnly(bottom: 2.h),
            const TextfieldUser(
              hintText: 'Password',
              icon: Icons.lock_outline,
              obscuretext: true,
            ).marginOnly(bottom: 2.h),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  '¿Has olvidado tu contraseña?',
                  style: TextStyle(
                    color: Palette.green,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ).marginOnly(bottom: 2.h),
            CustomButton(
              text: 'Iniciar Session',
              backgroundColor: Palette.green,
              textColor: Palette.black,
              onPressed: () {},
            ),
          ],
        ).marginSymmetric(horizontal: 10.w, vertical: 7.h),
      ),
    );
  }
}
