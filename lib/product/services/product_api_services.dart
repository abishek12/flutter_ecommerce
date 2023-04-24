import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/product_model.dart';

class ProductApiServices {
  final _baseUrl = "http://127.0.0.1:3000/api/v1";
  Future<ProductModel> fetchItems() async {
    ProductModel? productModel;
    try {
      final response = await http.get(Uri.parse('$_baseUrl/products'));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        productModel = ProductModel.fromJson(data);
      }

      return productModel!;
    } catch (exception) {
      throw '$exception';
    }
  }
}
