import 'package:flutter/material.dart';
import 'package:my_app/Model/ProductModel.dart';

class ProductViewModel extends ChangeNotifier {
  List<Product> _products = [
    Product(
        id: 1,
        name: "Product 1",
        image:
            "https://koenig-media.raywenderlich.com/uploads/2019/11/provider_tree.png"),
    Product(
        id: 2,
        name: "Product 2",
        image:
            "https://koenig-media.raywenderlich.com/uploads/2019/11/provider_tree.png"),
    Product(
        id: 3,
        name: "Product 3",
        image:
            "https://koenig-media.raywenderlich.com/uploads/2019/11/provider_tree.png"),
    // Add more products as needed
  ];

  List<Product> get products => _products;

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }
}
