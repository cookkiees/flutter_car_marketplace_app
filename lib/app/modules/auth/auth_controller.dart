import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var tabIndex = 0.obs;
  void changeTabIndex(index) {
    tabIndex.value = index;
  }

  FocusNode myFocusNode = FocusNode();

  var focusNode = false.obs;
  var obscureText = true.obs;
  var isChecked = false.obs;

  void onFocusChange(hasFocus) {
    focusNode.value = hasFocus;
  }

  TextEditingController verifyController = TextEditingController();

  final verifyFocusNode = FocusNode();

  @override
  void onClose() {
    verifyController.dispose();

    super.onClose();
    verifyFocusNode.dispose();
  }

  List<String> iconResetPassword = [
    "assets/icons/chat-1.svg",
    "assets/icons/mail-1.svg"
  ];

  List<String> viaResetPassword = ["via SMS", "via Email"];
}
