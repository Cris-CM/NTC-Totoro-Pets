import 'package:flutter/material.dart';
import 'package:ntc_totoro_pets/core/router/router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'NTC Totoro Pets',
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
