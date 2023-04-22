import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../dark_theme/theme_preferences.dart';
import '../../splash/provider/splash_provider.dart';

final List<SingleChildWidget> providerList = [
  ChangeNotifierProvider(
    create: (_) => SplashProvider(),
  ),
  ChangeNotifierProvider(
    create: (_) => ThemeNotifier(),
  ),
];
