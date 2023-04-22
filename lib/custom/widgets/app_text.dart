import 'package:flutter/material.dart';

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
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize ?? 14.0,
        color: color ?? Colors.black,
        fontWeight: fontWeight ?? FontWeight.normal,
        letterSpacing: letterSpacing ?? 0.0,
      ),
    );
  }
}
