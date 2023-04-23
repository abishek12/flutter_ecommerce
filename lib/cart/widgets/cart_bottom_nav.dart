import 'package:flutter/material.dart';
import 'cart_bottom_text_widget.dart';

class CartBottomNavWidget extends StatelessWidget {
  const CartBottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6),
      padding: const EdgeInsets.only(
        top: 16,
      ),
      decoration: const BoxDecoration(
          color: Color(0xffF1F6F9),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          )),
      height: 220,
      child: Column(
        children: [
          const CartBottomTextWidget(
            title: 'Items',
            price: 2,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              color: Colors.black26,
            ),
          ),
          const CartBottomTextWidget(
            title: 'Shipping',
            price: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              color: Colors.black26,
            ),
          ),
          const CartBottomTextWidget(
            title: 'Sub-Total',
            price: 1278,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text('Order Now | Total 1328'),
            icon: const Icon(Icons.shopping_basket),
          ),
        ],
      ),
    );
  }
}
