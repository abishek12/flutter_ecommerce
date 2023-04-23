import 'package:flutter/material.dart';

class ProfileListTileWidget extends StatelessWidget {
  final String title;
  final IconData leading;
  final VoidCallback onTap;
  const ProfileListTileWidget({
    super.key,
    required this.title,
    required this.leading,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: onTap,
        leading: Icon(
          leading,
          size: 28,
        ),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
