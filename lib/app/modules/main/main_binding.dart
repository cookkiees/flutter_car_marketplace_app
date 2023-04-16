import 'package:flutter_car_marketplace_app/app/modules/main/main_controller.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }
}
