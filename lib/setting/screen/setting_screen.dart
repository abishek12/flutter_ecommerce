import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../custom/widgets/app_bar.dart';
import '../../custom/widgets/app_text.dart';
import '../../dark_theme/theme_preferences.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context, listen: true);
    return Scaffold(
      appBar: customAppBar(context, 'Settings'),
      body: ListView(
        children: [
          SwitchListTile(
            title: const AppText(title: 'Dark Theme'),
            value: themeNotifier.isDarkMode,
            onChanged: (bool value) => themeNotifier.toggleTheme(value),
          ),
        ],
      ),
    );
  }
}
