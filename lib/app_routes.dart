import 'package:go_router/go_router.dart';

import 'authentication/screen/login_screen.dart';
import 'authentication/screen/register_screen.dart';
import 'cart/screen/cart_screen.dart';
import 'home/screen/home_screen.dart';
import 'main/screen/main_screen.dart';
import 'product/screen/product_screen.dart';
import 'profile/screen/profile_screen.dart';
import 'setting/screen/setting_screen.dart';
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
    GoRoute(
      path: '/setting',
      name: 'settingScreen',
      builder: (context, state) => const SettingScreen(),
    ),
    GoRoute(
      path: '/login',
      name: 'loginScreen',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      name: 'registerScreen',
      builder: (context, state) => const RegisterScreen(),
    ),
  ],
);
