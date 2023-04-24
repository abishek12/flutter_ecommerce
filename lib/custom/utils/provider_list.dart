import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../dark_theme/theme_preferences.dart';
import '../../main/provider/bottom_nav_provider.dart';
import '../../product/provider/product_api_provider.dart';
import '../../splash/provider/splash_provider.dart';

final List<SingleChildWidget> providerList = [
  ChangeNotifierProvider(
    create: (_) => SplashProvider(),
  ),
  ChangeNotifierProvider(
    create: (_) => ThemeNotifier(),
  ),
  ChangeNotifierProvider(
    create: (_) => BottomNavProvider(),
  ),
  ChangeNotifierProvider(
    create: (_) => ProductApiProvider(),
  ),
];
