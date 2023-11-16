import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:application_action/Models/handphone_model.dart';
import 'package:application_action/Models/laptop_model.dart';
import 'package:application_action/Models/headset_model.dart';

class ProductController extends GetxController {
  var headsetList = <HeadsetModel>[].obs;
  var laptopList = <LaptopModel>[].obs;
  var handphoneList = <HandphoneModel>[].obs;

   

  @override
  void onInit() async {
    super.onInit();

    String jsonString = await rootBundle.loadString('lib/Models/category_model.json');
    Map<String, dynamic> json = jsonDecode(jsonString);

     for (var headset in json['category']['headset']) {
      headsetList.add(
        HeadsetModel(
          id: headset['id'],
          nama: headset['nama'],
          harga: headset['harga'].toDouble(),
          deskripsi: headset['deskripsi'],
          foto: headset['foto'],
        ),
      );
    }
    for (var laptop in json['category']['laptop']) {
      laptopList.add(
        LaptopModel(
          id: laptop['id'],
          nama: laptop['nama'],
          harga: laptop['harga'].toDouble(),
          deskripsi: laptop['deskripsi'],
          foto: laptop['foto'],
        ),
      );
    }
    for (var handphone in json['category']['handphone']) {
      handphoneList.add(
        HandphoneModel(
          id: handphone['id'],
          nama: handphone['nama'],
          harga: handphone['harga'].toDouble(),
          deskripsi: handphone['deskripsi'],
          foto: handphone['foto'],
        ),
      );
    }
    update();
  }
}
