import 'package:flutter/material.dart';

class AuthFooterTextWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const AuthFooterTextWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          text: "$title ",
          style: const TextStyle(
            color: Colors.black,
            height: 2.5,
            letterSpacing: 0.7,
          ),
          children: [
            TextSpan(
              text: subtitle,
            ),
          ],
        ),
      ),
    );
  }
}
