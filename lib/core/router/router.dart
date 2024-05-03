import 'package:go_router/go_router.dart';
import 'package:ntc_totoro_pets/features/Auth/Presentation/welcome_screen.dart';
import 'package:ntc_totoro_pets/features/home_page.dart';

final goRouter = GoRouter(
  initialLocation: "/welcome",
  routes: [
    GoRoute(
      path: "/welcome",
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: "/home",
      builder: (context, state) => const HomePage(),
    )
  ],
);
