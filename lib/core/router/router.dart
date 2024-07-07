import 'package:get/get.dart';
import 'package:ntc_totoro_pets/features/Auth/Presentation/register_view.dart';
import 'package:ntc_totoro_pets/features/Auth/Presentation/welcome_screen.dart';
import 'package:ntc_totoro_pets/features/Auth/Presentation/login_view.dart';
import 'package:ntc_totoro_pets/features/home/home_view.dart';

final getRouter = <GetPage>[
  GetPage(
    name: "/welcome",
    page: () => const WelcomeScreen(),
  ),
  GetPage(
    name: "/login",
    page: () => const LoginView(),
  ),
  GetPage(
    name: "/register",
    page: () => const RegisterView(),
  ),
  GetPage(
    name: "/home",
    page: () => const HomeView(),
  ),
];
