import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  void onIndexChanged(int index) {
    currentIndex.value = index;
  }

  var carBrandsIndex = 0.obs;

  void onCarBrandsChanged(int index) {
    carBrandsIndex.value = index;
  }

  var carConditionIndex = 0.obs;

  void onCarConditionChanged(int index) {
    carConditionIndex.value = index;
  }

  var sortbyIndex = 0.obs;

  void onSortbyChanged(int index) {
    sortbyIndex.value = index;
  }

  var ratingIndex = 0.obs;

  void onRatingChanged(int index) {
    ratingIndex.value = index;
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

  var isSearchOpen = false.obs;

  void toggleSearch() {
    isSearchOpen.value = !isSearchOpen.value;
  }

  var isBottomSheetOpen = false.obs;

  void toggleBottomSheet() {
    isBottomSheetOpen.value = !isBottomSheetOpen.value;
  }

  void hideBottomSheet() {
    isBottomSheetOpen.value = false;
  }

  List<String> image = [
    "assets/images/camaro-sports.png",
    "assets/images/lmclaren-supercar.png",
    "assets/images/sedan-series.png",
    "assets/images/ferarri-sports.png",
  ];
  List<String> discount = ["20", "15", "9", "21"];

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
    "Ferrari Sports"
  ];

  List<String> myListCar = [
    "assets/images/car-1.png",
    "assets/images/car-2.png",
    "assets/images/car-3.png",
    "assets/images/car-4.png",
    "assets/images/car-5.png",
    "assets/images/car-6.png",
  ];
  List<String> myListCarName = [
    "Sedan Series",
    "McLaren Supercar",
    "Bugatti Sports",
    "F-Type Jaguar",
    "BMW i8",
    "Ford Mustang"
  ];

  List<String> carBrands = [
    "All",
    "Mercedes",
    "Tesla",
    "BMW",
    "Toyota",
    "Volvo",
    "Bugatti",
    "Honda",
    "Audi"
  ];
  List<String> carCondition = ["All", "New", "Used"];
  List<String> sortBy = ["Popular", "Most Recent", "Price High", "Price Low"];
  List<String> rating = ["5", "4", "3", "2", "1"];

  List<String> mercedes = [
    "assets/images/mercedes-1.png",
    "assets/images/mercedes-2.png",
    "assets/images/mercedes-3.png",
    "assets/images/mercedes-4.png",
    "assets/images/mercedes-5.png",
    "assets/images/mercedes-6.png"
  ];
}
