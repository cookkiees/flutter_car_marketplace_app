import 'package:flutter_car_marketplace_app/app/modules/order/order_controller.dart';
import 'package:get/get.dart';

class OrderBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(OrderController());
  }
}
