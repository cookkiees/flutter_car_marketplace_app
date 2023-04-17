import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  void onIndexChanged(int index) {
    currentIndex.value = index;
  }

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

  List<String> image = [
    "assets/images/camaro-sports.png",
    "assets/images/lmclaren-supercar.png",
    "assets/images/sedan-series.png",
    "assets/images/ferarri-sports.png",
  ];

  List<String> logo = [
    "assets/images/mercedes.png",
    "assets/images/tesla.png",
    "assets/images/bmw.png",
    "assets/images/toyota.png",
    "assets/images/volvo.png",
    "assets/images/bugatti.png",
    "assets/images/toyota.png",
  ];

  List<String> car = [
    "assets/images/bmw-m4-series.png",
    "assets/images/camaro-sports.png",
    "assets/images/audi-sports.png",
    "assets/images/lmclaren-supercar.png",
    "assets/images/sedan-series.png",
    "assets/images/ferarri-sports.png",
  ];
  List<String> carName = [
    "BMW M4 Series",
    "Camaro Sports",
    "Audi Sports",
    "Lamborghini Aventador",
    "Sedan Series",
    "Ferrari Sports",
  ];
}
