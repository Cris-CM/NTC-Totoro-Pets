import 'package:get/get.dart';
import 'package:ntc_totoro_pets/views/auth/forgot_password_view.dart';
import 'package:ntc_totoro_pets/views/auth/register_view.dart';
import 'package:ntc_totoro_pets/views/auth/reset_password_view.dart';
import 'package:ntc_totoro_pets/views/auth/welcome_screen.dart';
import 'package:ntc_totoro_pets/views/auth/login_view.dart';
import 'package:ntc_totoro_pets/views/home/home_view.dart';
import 'package:ntc_totoro_pets/views/pets/register_appointment_view.dart';
import 'package:ntc_totoro_pets/views/pets/register_pet_view.dart';

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
  GetPage(
    name: "/forgot-password",
    page: () => const ForgotPasswordView(),
  ),
  GetPage(
    name: "/reset-password",
    page: () => const ResetPasswordView(),
  ),
  GetPage(
    name: "/register-pet",
    page: () => const RegisterPetView(),
  ),
  GetPage(
    name: "/register-appointment",
    page: () => const RegisterAppointmentView(),
  ),
];
