import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/profile_image_widget.dart';
import '../widgets/profile_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileImageWidget(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Divider(
            color: Colors.black54,
          ),
        ),
        ProfileListTileWidget(
          leading: Icons.person,
          title: "Account",
          onTap: () {},
        ),
        ProfileListTileWidget(
          leading: Icons.shopping_basket,
          title: "Orders",
          onTap: () {},
        ),
        ProfileListTileWidget(
          title: "Notification",
          leading: Icons.notifications,
          onTap: () {},
        ),
        ProfileListTileWidget(
          title: "Setting",
          leading: Icons.settings,
          onTap: () => context.pushNamed('settingScreen'),
        ),
        ProfileListTileWidget(
          title: "Help Center",
          leading: Icons.help,
          onTap: () {},
        ),
        ProfileListTileWidget(
          title: "Logout",
          leading: Icons.logout,
          onTap: () {},
        ),
      ],
    );
  }
}
