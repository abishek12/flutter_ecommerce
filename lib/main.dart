import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_routes.dart';
import 'custom/utils/provider_list.dart';
import 'custom/utils/style.dart';
import 'dark_theme/theme_preferences.dart';

void main() {
  runApp(
    MultiProvider(
      providers: providerList,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, value, child) {
        return MaterialApp.router(
          routerConfig: appRoutes,
          debugShowCheckedModeBanner: false,
          theme: value.getTheme(),
          darkTheme: darkTheme,
        );
      },
    );
  }
}
