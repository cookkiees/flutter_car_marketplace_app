import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  var isFavorite = false.obs;
  var favoritesList = [].obs;

  void toggleFavorites() {
    isFavorite.value = !isFavorite.value;
  }

  void toggleFavorite(int index) {
    if (favoritesList.contains(index)) {
      favoritesList.remove(index);
    } else {
      favoritesList.add(index);
    }
  }

  var tabIndex = 0.obs;

  void changeTabIndex(index) {
    tabIndex.value = index;
    update();
  }

  List<String> camaro = [
    "assets/images/red-camaro.png",
    "assets/images/camaro-sports.png",
    "assets/images/blue-camaro.png",
    "assets/images/black-camaro.png",
    "assets/images/silver-camaro.png",
    "assets/images/white-camaro.png",
  ];
}
