import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth_controller.dart';

class CheckBoxWidget extends GetView<AuthController> {
  const CheckBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => Checkbox(
            value: controller.isChecked.value,
            activeColor: Colors.black,
            onChanged: (value) {
              controller.isChecked.value = value!;
            },
          ),
        ),
        const Text(
          "Remember me",
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
