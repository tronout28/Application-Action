import 'package:application_action/Models/favorite_model.dart';
import 'package:get/get.dart';

class favoriteController extends GetxController {
  var favoriteData = <Favorite>[].obs;
  void addToFavorite(Favorite data) {
    favoriteData.add(data);
  }
}
