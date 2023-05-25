import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_car_marketplace_app/app/modules/auth/auth_controller.dart';
import 'package:flutter_car_marketplace_app/app/modules/auth/widgets/default_buttoon_widget.dart';
import 'package:flutter_car_marketplace_app/app/routings/app_routers.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../components/appbar_widget.dart';

class VerifyPage extends GetView<AuthController> {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AppBarWidget(
          title: Row(
            children: [
              Text(
                "Forgot Password",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(height: 250),
              Column(
                children: [
                  const Text(
                    "Code has been send to ....",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 4,
                      showCursor: false,
                      cursorColor: Colors.black,
                      controller: controller.verifyController,
                      focusNode: controller.verifyFocusNode,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      autoFocus: true,
                      textStyle: const TextStyle(
                        fontSize: 32,
                      ),
                      hintStyle: const TextStyle(
                          fontSize: 32, color: Color(0xFFDBDBDB)),
                      hintCharacter: "",
                      pinTheme: PinTheme(
                          borderWidth: 1,
                          shape: PinCodeFieldShape.box,
                          fieldWidth: 70,
                          fieldHeight: 60,
                          borderRadius: BorderRadius.circular(8),
                          activeColor: Colors.grey.shade200,
                          selectedColor: Colors.black,
                          inactiveColor: Colors.grey.shade200,
                          fieldOuterPadding:
                              const EdgeInsets.symmetric(horizontal: 16)),
                      onChanged: (value) {},
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Resend code in 55 s",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 250),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: DefaultButtonWidget(
                    title: "Verify",
                    onPressed: () => Get.toNamed(AppRouters.createNewPassword),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
