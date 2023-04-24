import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/custom/widgets/app_text.dart';

class ProductListWidget extends StatelessWidget {
  final List data;
  const ProductListWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      height: MediaQuery.of(context).size.height * 0.75,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 5,
          ),
          itemCount: data.length,
          itemBuilder: (context, index) {
            final items = data[index];
            return Card(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    child: Image.network("${items.thumbnail}"),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  AppText(
                    title: "${items.title}",
                    fontSize: 16,
                  ),
                  AppText(
                    title: "Rs.${items.price}",
                    fontSize: 16,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
