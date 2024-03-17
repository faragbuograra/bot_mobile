import 'package:flutter/material.dart';
import 'package:my_app/Model/ProductModel.dart';
import 'package:my_app/ViewModel/FavoriteViewModel.dart';
import 'package:my_app/ViewModel/ProductViewModel.dart';
import 'package:provider/provider.dart';

class ProductListView extends StatefulWidget {
  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  @override
  Widget build(BuildContext context) {
    ProductViewModel productViewModel = Provider.of<ProductViewModel>(context);
    FavoriteList favoriteView = Provider.of<FavoriteList>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: Consumer<ProductViewModel>(
        builder: (context, productViewModel, child) {
          return ListView.builder(
            itemCount: productViewModel.products.length,
            itemBuilder: (context, index) {
              Product product = productViewModel.products[index];
              return ListTile(
                title: Text(product.name),
                leading: Image.network(
                  product.image,
                  width: 150,
                  height: 150,
                ),
                trailing: IconButton(
                  icon: product.isFavorite
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
                  onPressed: () {
                    setState(() {
                      if (product.isFavorite) {
                        favoriteView.removeFromFavorites(product.id);
                      } else {
                        favoriteView.addToFavorites(product);
                      }
                      product.isFavorite = !product.isFavorite;
                    });
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Generate a new product
          Product newProduct = Product(
            id: productViewModel.products.length,
            name: "New Product ${productViewModel.products.length + 1}",
            image:
                "https://koenig-media.raywenderlich.com/uploads/2019/11/provider_tree.png",
          );
          // Add the new product to the list
          productViewModel.addProduct(newProduct);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
