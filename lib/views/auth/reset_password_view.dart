import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntc_totoro_pets/core/colors/palette.dart';
import 'package:ntc_totoro_pets/widgets/custom_button.dart';
import 'package:ntc_totoro_pets/widgets/texfiel_user.dart';
import 'package:ntc_totoro_pets/widgets/texts.dart';
import 'package:sizer/sizer.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  final TextEditingController _emailController = TextEditingController();
  String? _errorText;
  bool _success = false;

  void _onSubmit() {
    setState(() {
      if (_emailController.text.trim().length < 8) {
        _errorText = 'Debe tener como mínimo 8 caracteres';
        _success = false;
      } else {
        _errorText = null;
        _success = true;

        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            Future.delayed(const Duration(seconds: 2), () {
              if (Navigator.canPop(context)) {
                Navigator.of(context).pop();
                Get.toNamed("/login");
              }
            });
            return Center(
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
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
                        Icons.check_circle,
                        color: Palette.green,
                        size: 60,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '¡Contraseña reestablecida!',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }
    });
  }

  void _onBack() {
    Get.toNamed("/login");
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
                'Reestablecer Contraseña',
                fontSize: 18,
              ),
            ).marginOnly(bottom: 2.h),
            Texts.w400(
              'Coloca tu nueva contraseña',
              fontSize: 10.5,
              color: Palette.grey400,
            ).marginOnly(bottom: 4.h),
            Texts.bold(
              'Contraseña',
              color: Palette.green,
              fontSize: 10,
            ).marginOnly(left: 2.w),
            TextfieldUser(
              hintText: 'Su nueva contraseña',
              obscuretext: true,
              controller: _emailController,
            ).marginOnly(bottom: 2.h),
            if (_errorText != null)
              Align(
                alignment: Alignment.center,
                child: Texts.regular(
                  _errorText!,
                  fontSize: 10,
                  color: Colors.red,
                ).marginOnly(bottom: 2.h),
              ),
            CustomButton(
              text: 'Guardar Contraseña',
              backgroundColor: Palette.green,
              textColor: Palette.white,
              onPressed: _success ? _onBack : _onSubmit,
            ).marginOnly(bottom: 2.h),
          ],
        ).marginSymmetric(horizontal: 12.w, vertical: 5.h),
      ),
    );
  }
}
