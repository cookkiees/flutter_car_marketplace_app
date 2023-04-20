import 'package:flutter_car_marketplace_app/app/modules/inbox/inbox_controller.dart';
import 'package:get/get.dart';

class InboxBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(InboxController());
  }
}
