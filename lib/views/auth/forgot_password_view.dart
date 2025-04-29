import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntc_totoro_pets/core/colors/palette.dart';
import 'package:ntc_totoro_pets/widgets/custom_button.dart';
import 'package:ntc_totoro_pets/widgets/texfiel_user.dart';
import 'package:ntc_totoro_pets/widgets/texts.dart';
import 'package:sizer/sizer.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final TextEditingController _emailController = TextEditingController();
  String? _errorText;
  bool _success = false;

  void _onSubmit() {
    setState(() {
      if (_emailController.text.trim().isEmpty) {
        _errorText = 'El Usuario no Existe o no esta confirmado';
        _success = false;
      } else {
        _errorText = null;
        _success = true;
      }
    });
  }

  void _onback() {
    Get.toNamed("/reset-password");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Texts.w500(
                'Olvide mi contraseña',
                fontSize: 18,
              ),
            ).marginOnly(bottom: 2.h),
            Texts.w400(
              'Reestablece tu contraseña escriviendo tu correo electronico',
              fontSize: 10.5,
              color: Palette.grey400,
            ).marginOnly(bottom: 4.h),
            Texts.bold(
              'Correo Electronico',
              color: Palette.green,
              fontSize: 10,
            ).marginOnly(left: 2.w),
            TextfieldUser(
              hintText: 'example@gmail.com',
              controller: _emailController,
            ).marginOnly(bottom: 2.h),
            if (_errorText != null)
              Align(
                child: Texts.regular(
                  _errorText!,
                  fontSize: 10,
                  color: Colors.red,
                ).marginOnly(bottom: 4.h),
              ),
            if (_success)
              Align(
                alignment: Alignment.center,
                child: Texts.regular(
                  'Se envio un correo electronico para reestablecer tu contraseña',
                  fontSize: 10,
                  color: Colors.green,
                ).marginOnly(bottom: 4.h),
              ),
            CustomButton(
              text: _success ? 'Volver' : 'Reestablecer Contraseña',
              backgroundColor: Palette.green,
              textColor: Palette.white,
              onPressed: _success ? _onback : _onSubmit,
            ).marginOnly(bottom: 2.h),
          ],
        ).marginSymmetric(horizontal: 12.w, vertical: 5.h),
      ),
    );
  }
}
