import 'package:flutter/material.dart';
import 'package:application_action/Models/product_mode.dart';
import 'package:application_action/Page/DetailPage/detail_page_view.dart';

class FavoritePageView extends StatefulWidget {
  const FavoritePageView({Key? key}) : super(key: key);

  @override
  _FavoritePageViewState createState() => _FavoritePageViewState();
}

class _FavoritePageViewState extends State<FavoritePageView> {
  List<Products> favoriteProducts = [];

  @override
  void initState() {
    super.initState();
    initializeFavoriteProducts();
  }

  void initializeFavoriteProducts() {
    favoriteProducts =
        Product.where((Products) => Products["isFavorite"] == true)
            .map((data) => Products(
                  id: data["id"],
                  nama: data["nama"],
                  harga: data["harga"],
                  deskripsi: data["deskripsi"],
                  foto: data["foto"],
                  isFavorite: data["isFavorite"],
                ))
            .toList();
  }

  void removeFromFavorites(int index) {
    setState(() {
      favoriteProducts.removeAt(index);
    });
  }

  @override
  void didUpdateWidget(covariant FavoritePageView oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Inisialisasi ulang favoriteProducts ketika widget diperbarui
    initializeFavoriteProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('WishList'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: favoriteProducts.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            shadowColor: Colors.grey,
            color: Colors.white,
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPageView(),
                    settings: RouteSettings(
                      arguments: {
                        "id": favoriteProducts[index].id,
                        "nama": favoriteProducts[index].nama,
                        "harga": favoriteProducts[index].harga,
                        "deskripsi": favoriteProducts[index].deskripsi,
                        "foto": favoriteProducts[index].foto,
                        "isFavorite": favoriteProducts[index].isFavorite,
                      },
                    ),
                  ),
                );
              },
              leading: Image.network(
                favoriteProducts[index].foto,
                width: 50,
              ),
              title: Text(favoriteProducts[index].nama),
              subtitle: Text('\$${favoriteProducts[index].harga.toString()}'),
              trailing: IconButton(
                icon: Icon(Icons.favorite, color: Colors.red),
                onPressed: () {
                  removeFromFavorites(index);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
