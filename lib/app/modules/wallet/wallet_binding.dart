import 'package:flutter_car_marketplace_app/app/modules/wallet/wallet_controller.dart';
import 'package:get/get.dart';

class WalletBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(WalletController());
  }
}
