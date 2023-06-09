import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/product/provider/product_api_provider.dart';
import 'package:flutter_ecommerce/product/widgets/product_list_widget.dart';
import 'package:provider/provider.dart';

import '../widgets/product_search_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductApiProvider>(builder: (context, value, child) {
      if (value.myList!.isEmpty) {
        value.fetchData();
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const ProductSearchWidget(),
            ProductListWidget(data: value.myList!),
          ],
        ),
      );
    });
  }
}
