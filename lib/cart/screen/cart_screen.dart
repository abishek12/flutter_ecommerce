import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/custom/widgets/app_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'Cart', isCart: true),
    );
  }
}
