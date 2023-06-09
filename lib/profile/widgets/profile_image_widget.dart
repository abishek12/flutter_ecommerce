import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Stack(
        fit: StackFit.expand,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/profile/person.jpg"),
          ),
          Positioned(
            right: -8,
            bottom: 0,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                CupertinoIcons.camera,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
