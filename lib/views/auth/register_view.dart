import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntc_totoro_pets/core/colors/palette.dart';
import 'package:ntc_totoro_pets/widgets/custom_button.dart';
import 'package:ntc_totoro_pets/widgets/texfiel_user.dart';
import 'package:ntc_totoro_pets/widgets/texts.dart';
import 'package:sizer/sizer.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Texts.bold(
              'Crear Cuenta',
              fontSize: 18,
            ).marginOnly(bottom: 4.h),
            Texts.bold(
              'Nombre',
              color: Palette.green,
              fontSize: 10,
            ).marginOnly(left: 2.w),
            const TextfieldUser(
              hintText: 'Su nombre',
            ).marginOnly(bottom: 4.h),
            Texts.bold(
              'Apellido',
              color: Palette.green,
              fontSize: 10,
            ).marginOnly(left: 2.w),
            const TextfieldUser(
              hintText: 'Su apellido',
            ).marginOnly(bottom: 4.h),
            Texts.bold(
              'Correo Electronico',
              color: Palette.green,
              fontSize: 10,
            ).marginOnly(left: 2.w),
            const TextfieldUser(
              hintText: 'Su correo electronico',
            ).marginOnly(bottom: 4.h),
            Texts.bold(
              'Contraseña',
              color: Palette.green,
              fontSize: 10,
            ).marginOnly(left: 2.w),
            const TextfieldUser(
              hintText: 'Su contraseña',
            ).marginOnly(bottom: 6.h),
            CustomButton(
              text: 'Continuar',
              backgroundColor: Palette.green,
              textColor: Palette.white,
              onPressed: () {
                Get.toNamed("/login");
              },
            ).marginOnly(bottom: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Texts.w400(
                  '¿Ya tienes una cuenta?',
                  fontSize: 10,
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed("/login");
                  },
                  child: const Texts.bold(
                    'Iniciar Sesion',
                    color: Palette.green,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ).marginSymmetric(horizontal: 10.w, vertical: 5.h),
      ),
    );
  }
}
