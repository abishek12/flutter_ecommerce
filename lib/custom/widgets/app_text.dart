import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../dark_theme/theme_preferences.dart';

class AppText extends StatelessWidget {
  final String title;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  const AppText({
    super.key,
    required this.title,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context, listen: false);
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize ?? 14.0,
        color: themeNotifier.isDarkMode ? Colors.white : color ?? Colors.black,
        fontWeight: fontWeight ?? FontWeight.normal,
        letterSpacing: letterSpacing ?? 0.0,
      ),
    );
  }
}
