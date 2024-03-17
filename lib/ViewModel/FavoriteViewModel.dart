// favorite_list.dart

import 'package:flutter/material.dart';
import 'package:my_app/Model/FavoriteModel.dart';
import 'package:my_app/Model/ProductModel.dart';

class FavoriteList extends ChangeNotifier {
  List<Favorite> _favorites = [];
  List<Favorite> get favorites => _favorites;

  void addToFavorites(Product product) {
    favorites.add(
        Favorite(id: product.id, name: product.name, image: product.image));
    notifyListeners();
  }

  void removeFromFavorites(int productId) {
    favorites.removeWhere((favorite) => favorite.id == productId);
    notifyListeners();
  }

  // bool isFavorite(int productId) {
  //   return favorites.any((favorite) => favorite.id == productId);
  // }
}
