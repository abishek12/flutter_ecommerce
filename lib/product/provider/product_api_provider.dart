import 'package:flutter/material.dart';

import '../services/product_api_services.dart';

class ProductApiProvider extends ChangeNotifier {
  ProductApiServices productApiServices = ProductApiServices();

  List? _myList = [];

  List? get myList => _myList;

  fetchData() async {
    final response = await productApiServices.fetchItems();
    _myList = response.data;

    notifyListeners();
  }
}
