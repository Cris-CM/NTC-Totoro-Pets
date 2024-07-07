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
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/fondo.jpg',
              ),
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
                'Registrarse',
                fontSize: 25,
                color: Palette.black,
              ).marginOnly(bottom: 5.h),
              const TextfieldUser(
                backgroundColor: Palette.greytranparent,
                hintText: 'Name',
              ).marginOnly(bottom: 2.h),
              const TextfieldUser(
                backgroundColor: Palette.greytranparent,
                hintText: 'Email Address',
              ).marginOnly(bottom: 2.h),
              const TextfieldUser(
                backgroundColor: Palette.greytranparent,
                hintText: 'Password',
                obscuretext: true,
              ).marginOnly(bottom: 4.h),
              CustomButton(
                text: 'Registrarme',
                backgroundColor: Palette.green,
                textColor: Palette.black,
                onPressed: () {
                  Get.toNamed("/login");
                },
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Get.toNamed("/login");
                },
                child: const Text(
                  'Ya tengo una cuenta',
                  style: TextStyle(
                    color: Palette.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ).marginSymmetric(horizontal: 10.w, vertical: 5.h),
        ),
      ),
    );
  }
}
