import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntc_totoro_pets/core/colors/palette.dart';
import 'package:ntc_totoro_pets/widgets/custom_button.dart';
import 'package:ntc_totoro_pets/widgets/texfiel_user.dart';
import 'package:ntc_totoro_pets/widgets/texts.dart';
import 'package:sizer/sizer.dart';

class RegisterPetView extends StatefulWidget {
  const RegisterPetView({super.key});

  @override
  State<RegisterPetView> createState() => _RegisterPetViewState();
}

class _RegisterPetViewState extends State<RegisterPetView> {
  void _onRegister() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        Future.delayed(const Duration(seconds: 2), () {
          if (Navigator.canPop(context)) {
            Navigator.of(context).pop();
            Get.toNamed("/home");
          }
        });
        return Center(
          child: Container(
            width: 70.w,
            height: 20.h,
            padding: EdgeInsets.all(2.w),
            decoration: BoxDecoration(
              color: Palette.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0.0, end: 1.0),
                  duration: const Duration(milliseconds: 700),
                  builder: (context, value, child) => Transform.scale(
                    scale: value,
                    child: child,
                  ),
                  child: Icon(
                    Icons.pets,
                    color: Palette.green,
                    size: 60,
                  ),
                ).marginOnly(bottom: 2.h),
                const Texts.bold(
                  'Nueva Mascota Registrada',
                  color: Palette.green,
                  fontSize: 16,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: const Texts.bold(
                'Registrar Mascota',
                color: Palette.green,
                fontSize: 18,
              ).marginOnly(bottom: 4.h),
            ),
            Texts.bold(
              'Nombre',
              color: Palette.green,
              fontSize: 10,
            ).marginOnly(left: 2.w),
            const TextfieldUser(
              hintText: 'Nombre de la mascota',
            ).marginOnly(bottom: 4.h),
            Texts.bold(
              'Especie',
              color: Palette.green,
              fontSize: 10,
            ).marginOnly(left: 2.w),
            const TextfieldUser(
              hintText: 'Su especie',
            ).marginOnly(bottom: 4.h),
            Texts.bold(
              'Raza',
              color: Palette.green,
              fontSize: 10,
            ).marginOnly(left: 2.w),
            const TextfieldUser(
              hintText: 'Su raza',
            ).marginOnly(bottom: 4.h),
            Texts.bold(
              'Genero',
              color: Palette.green,
              fontSize: 10,
            ).marginOnly(left: 2.w),
            const TextfieldUser(
              hintText: 'Su genero',
            ).marginOnly(bottom: 6.h),
            CustomButton(
              text: 'Registrar',
              backgroundColor: Palette.green,
              textColor: Palette.white,
              onPressed: () {
                _onRegister();
              },
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                Get.toNamed("/home");
              },
              child: const Texts.bold(
                'Cancelar',
                color: Palette.green,
                fontSize: 12,
              ),
            ),
          ],
        ).marginSymmetric(horizontal: 10.w, vertical: 5.h),
      ),
    );
  }
}
