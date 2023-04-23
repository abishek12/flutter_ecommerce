import 'package:flutter/material.dart';

import '../../custom/widgets/app_text.dart';

class CartBottomTextWidget extends StatelessWidget {
  final String title;
  final int price;
  const CartBottomTextWidget({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            title: title,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.8,
          ),
          AppText(
            title: '$price',
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
