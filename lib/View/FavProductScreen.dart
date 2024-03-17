import 'package:flutter/material.dart';
import 'package:my_app/Model/FavoriteModel.dart';
import 'package:my_app/Model/ProductModel.dart';
import 'package:my_app/ViewModel/FavoriteViewModel.dart';
import 'package:my_app/ViewModel/ProductViewModel.dart';
import 'package:provider/provider.dart';

class FavProductListView extends StatefulWidget {
  @override
  State<FavProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<FavProductListView> {
  @override
  Widget build(BuildContext context) {
    FavoriteList favViewModel = Provider.of<FavoriteList>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Fav Product List'),
      ),
      body: Consumer<FavoriteList>(
        builder: (context, favproductViewModel, child) {
          return ListView.builder(
            itemCount: favproductViewModel.favorites.length,
            itemBuilder: (context, index) {
              Favorite favorite = favproductViewModel.favorites[index];

              return ListTile(
                title: Text(favorite.name),
                leading: Image.network(
                  favorite.image,
                  width: 150,
                  height: 150,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
