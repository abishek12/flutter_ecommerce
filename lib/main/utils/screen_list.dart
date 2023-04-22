import '../../home/screen/home_screen.dart';
import '../../product/screen/product_screen.dart';
import '../../profile/screen/profile_screen.dart';

final List screenList = [
  {
    "title": 'Home',
    "screen": const HomeScreen(),
  },
  {
    "title": 'Shop',
    "screen": const ProductScreen(),
  },
  {
    "title": 'Profile',
    "screen": const ProfileScreen(),
  },
];
