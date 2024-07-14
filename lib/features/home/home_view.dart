import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ntc_totoro_pets/core/colors/palette.dart';
import 'package:ntc_totoro_pets/widgets/texts.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.blueGray,
      appBar: AppBar(
        backgroundColor: Palette.green,
        automaticallyImplyLeading: false,
        title: const Texts.bold(
          'Hola Lalo',
          fontSize: 10,
          color: Palette.white,
          fontFamily: 'SemiCondensedBlack',
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 90.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Palette.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.pets,
                      ).marginOnly(right: 2.w),
                      const Texts.bold(
                        'My Pets',
                        fontFamily: 'Fredoka',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 17.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (BuildContext context, int index) {
                        return Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ).marginAll(10.sp),
      ),
    );
  }
}
