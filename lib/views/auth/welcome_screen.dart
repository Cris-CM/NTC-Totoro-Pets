import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntc_totoro_pets/core/colors/palette.dart';
import 'package:ntc_totoro_pets/widgets/custom_button.dart';
import 'package:ntc_totoro_pets/widgets/texts.dart';
import 'package:sizer/sizer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 55.w,
                  ).only(bottom: 5.h),
                  const Texts.bold(
                    'Hola Bienvenido',
                    fontSize: 20,
                    color: Palette.black,
                  ).only(bottom: 3.h),
                  const Texts.regular(
                    '"Mientras te sientas y te quedas nosotros\n                  saldremos y jugaremos"',
                    fontSize: 10,
                    color: Palette.black,
                  ).only(bottom: 5.h),
                  CustomButton(
                    text: 'Empezar',
                    backgroundColor: Palette.green,
                    textColor: Palette.white,
                    onPressed: () {
                      Get.toNamed("/login");
                    },
                  ).only(bottom: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Texts.bold(
                        'Ya tienes una cuenta ?',
                        fontSize: 12,
                        color: Palette.black,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed("/login");
                        },
                        child: Texts.bold(
                          'Login',
                          fontSize: 12,
                          color: Palette.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ).marginOnly(top: 10.w, left: 6.h, right: 6.h),
          ],
        ),
      ),
    );
  }
}
