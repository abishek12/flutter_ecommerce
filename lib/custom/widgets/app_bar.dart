import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_text.dart';

PreferredSizeWidget customAppBar(BuildContext context, title,
    {bool? isCart = false}) {
  return AppBar(
    title: AppText(
      title: '$title',
      fontSize: 20,
    ),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications),
      ),
      isCart!
          ? Container()
          : IconButton(
              onPressed: () => context.pushNamed('cartScreen'),
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
    ],
  );
}
