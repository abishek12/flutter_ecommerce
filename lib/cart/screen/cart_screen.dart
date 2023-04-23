import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/custom/widgets/app_text.dart';

import '../../custom/widgets/app_bar.dart';
import '../widgets/cart_bottom_nav.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'Cart', isCart: true),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150,
                    height: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/profile/person.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppText(
                          title:
                              "Iphone 14 pro max 256gb black color with 5g varient",
                          fontSize: 17,
                          letterSpacing: 0.8,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                              title: "Size: ${index % 2 == 0 ? 'M' : 'L'}",
                            ),
                            AppText(
                              title:
                                  "Price: Rs. ${index % 2 == 0 ? '1000' : '1200'}",
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const AppText(title: "Quantity"),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.remove,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const AppText(title: "2"),
                                const SizedBox(width: 8),
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.add,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
      bottomNavigationBar: const CartBottomNavWidget(),
    );
  }
}
