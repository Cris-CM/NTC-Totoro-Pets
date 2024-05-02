import 'package:go_router/go_router.dart';
import 'package:ntc_totoro_pets/features/Auth/Presentation/login_page.dart';
import 'package:ntc_totoro_pets/features/home_page.dart';

final goRouter = GoRouter(
  initialLocation: "/login",
  routes: [
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: "/home",
      builder: (context, state) => const HomePage(),
    )
  ],
);
