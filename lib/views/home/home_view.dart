import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntc_totoro_pets/core/colors/palette.dart';
import 'package:ntc_totoro_pets/widgets/custom_button.dart';
import 'package:ntc_totoro_pets/widgets/texts.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Texts.bold(
                      'Mascotas',
                      fontSize: 22,
                      color: Palette.green,
                    ),
                  ),
                ),
                // Icon(Icons.menu, color: Palette.grey400)
              ],
            ).marginOnly(bottom: 4.h),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              decoration: BoxDecoration(
                color: Palette.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Texts.w300(
                        'Max',
                        fontSize: 20,
                        color: Palette.white,
                      ),
                      Image.asset(
                        'assets/images/dog.png',
                        width: 20.w,
                      ),
                      Icon(
                        Icons.camera_alt,
                        size: 7.w,
                      ),
                    ],
                  ),
                ],
              ),
            ).marginOnly(bottom: 4.h),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
              decoration: BoxDecoration(
                color: Palette.white,
                border: Border.all(color: Palette.green, width: 1.5),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Palette.grey400.withOpacity(0.08),
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Agregar nueva mascota',
                        hintStyle: TextStyle(
                          color: Palette.grey400,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Palette.green,
                    shape: CircleBorder(),
                    elevation: 4,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {
                        Get.toNamed("/register-pet");
                      },
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.add, color: Palette.white, size: 30),
                      ),
                    ),
                  )
                ],
              ),
            ).marginOnly(bottom: 5.h),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              child: CustomButton(
                text: 'Crear Cita',
                backgroundColor: Palette.green,
                textColor: Palette.white,
                onPressed: () {
                  Get.toNamed("/register-appointment");
                },
              ),
            ),
          ],
        ).marginOnly(right: 5.w, left: 5.w),
      ),
    );
  }
}
