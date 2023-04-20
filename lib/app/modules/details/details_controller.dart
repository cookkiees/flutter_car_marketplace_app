import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/makeanoffer/views/prosesoffer/offer_amount.dart';

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

  List<String> titleAddress = ["Home", "Office", "Apparment", "Parent's House"];

  List<String> camaro = [
    "assets/images/red-camaro.png",
    "assets/images/camaro-sports.png",
    "assets/images/blue-camaro.png",
    "assets/images/black-camaro.png",
    "assets/images/silver-camaro.png",
    "assets/images/white-camaro.png",
  ];
  var tabProductIndex = 0.obs;

  void changePageProduct(int index) {
    tabProductIndex.value = index;
  }

  Widget getPageProduct() {
    switch (tabProductIndex.value) {
      case 0:
        return const OfferAmount();
      case 1:
        return const OfferAmountA();
      case 2:
        return const OfferAmountB();
      case 3:
        return const OfferAmountC();
      case 4:
        return const OfferAmountD();
      case 5:
        return const OfferAmountE();
      case 6:
        return const OfferAmountF();
      case 7:
        return const OfferAmountG();
      case 8:
        return const OfferAmountH();
      default:
        return Container();
    }
  }
}
