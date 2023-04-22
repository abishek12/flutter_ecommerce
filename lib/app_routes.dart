import 'package:go_router/go_router.dart';

import 'main/screen/main_screen.dart';
import 'splash/screen/splash_screen.dart';

final appRoutes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'splashScreen',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/main',
      name: 'mainScreen',
      builder: (context, state) => const MainScreen(),
    ),
  ],
);
