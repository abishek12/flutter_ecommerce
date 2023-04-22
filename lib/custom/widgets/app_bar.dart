import 'package:flutter/material.dart';

import 'app_text.dart';

PreferredSizeWidget customAppBar({bool? isProfile = false}) {
  return AppBar(
    title: const AppText(
      title: 'Home',
      fontSize: 20,
    ),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications),
      ),
      isProfile!
          ? Container()
          : IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
    ],
  );
}
