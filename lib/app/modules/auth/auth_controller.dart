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
}
