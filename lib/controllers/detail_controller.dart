import 'package:application_action/Models/favorite_model.dart';
import 'package:application_action/Models/product_mode.dart';
import 'package:application_action/controllers/favorite_controller.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  void addFavorite(Products products) {
    final detailController = Get.put(favoriteController());
    detailController.addToFavorite(Favorite(
        id: products.id,
        nama: products.nama,
        harga: products.harga,
        deskripsi: products.deskripsi,
        foto: products.foto));
  }
}
