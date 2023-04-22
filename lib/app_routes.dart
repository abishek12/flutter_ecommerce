import 'package:go_router/go_router.dart';

import 'cart/screen/cart_screen.dart';
import 'home/screen/home_screen.dart';
import 'main/screen/main_screen.dart';
import 'product/screen/product_screen.dart';
import 'profile/screen/profile_screen.dart';
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
    GoRoute(
      path: '/home',
      name: 'homeScreen',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/shop',
      name: 'shopScreen',
      builder: (context, state) => const ProductScreen(),
    ),
    GoRoute(
      path: '/profile',
      name: 'profileScreen',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/cart',
      name: 'cartScreen',
      builder: (context, state) => const CartScreen(),
    ),
  ],
);
