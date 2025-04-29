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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/logo.png',
                height: 50.w,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: const Texts.bold(
                'PetShop',
                fontSize: 30,
                color: Palette.green,
              ).marginOnly(bottom: 8.h),
            ),
            Texts.bold(
              'correo electronico',
              alignment: TextAlign.start,
              color: Palette.green,
              fontSize: 10,
            ).marginOnly(left: 2.w),
            const TextfieldUser(
              hintText: 'example@gmail.com',
            ).marginOnly(bottom: 4.h),
            Texts.bold(
              'contraseña',
              alignment: TextAlign.start,
              color: Palette.green,
              fontSize: 10,
            ).marginOnly(left: 2.w),
            const TextfieldUser(
              hintText: 'Su contraseña',
              obscuretext: true,
            ).marginOnly(bottom: 4.h),
            TextButton(
              onPressed: () {
                Get.toNamed("/forgot-password");
              },
              child: const Texts.w400(
                '¿Has olvidado tu contraseña?',
                color: Palette.greytranparent,
                fontSize: 10,
              ),
            ).marginOnly(bottom: 1.h),
            CustomButton(
              text: 'Iniciar Session',
              backgroundColor: Palette.green,
              textColor: Palette.white,
              onPressed: () {
                Get.toNamed("/home");
              },
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                Get.toNamed("/register");
              },
              child: const Texts.bold(
                'Crear Cuenta',
                fontSize: 12,
                color: Palette.green,
              ),
            ),
          ],
        ).marginOnly(left: 8.w, right: 8.w, bottom: 5.h),
      ),
    );
  }
}
