import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:ntc_totoro_pets/core/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          title: 'NTC Totoro Pets',
          initialRoute: "/welcome",
          debugShowCheckedModeBanner: false,
          getPages: getRouter,
        );
      },
    );
  }
}
