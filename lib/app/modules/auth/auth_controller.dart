import 'package:get/get.dart';

class AuthController extends GetxController {
  var tabIndex = 0.obs;
  void changeTabIndex(index) {
    tabIndex.value = index;
  }
}
