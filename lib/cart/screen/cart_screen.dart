import 'package:flutter/material.dart';

import '../../custom/widgets/app_bar.dart';
import '../widgets/cart_bottom_nav.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'Cart', isCart: true),
      bottomNavigationBar: const CartBottomNavWidget(),
    );
  }
}
