import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/modules/auth/auth_controller.dart';
import 'package:flutter_car_marketplace_app/app/modules/auth/widgets/checkbox_widget.dart';
import 'package:flutter_car_marketplace_app/app/modules/auth/widgets/default_buttoon_widget.dart';
import 'package:flutter_car_marketplace_app/app/modules/auth/widgets/default_textformfield_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../widgets/appbar_widget.dart';

class CreateNewPasswordPage extends GetView<AuthController> {
  const CreateNewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBarWidget(
          title: Row(
            children: const [
              Text(
                "Create New Password",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Lottie.asset("assets/lottie/forgot-password.json",
                    height: 400),
              ),
              const SizedBox(height: 32),
              const Text(
                "Create Your New Password",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              const SizedBox(height: 32),
              DefaultTextFormFieldWidget(
                icons: "assets/icons/lock.svg",
                hintText: "New Password",
                suffixIcon: Focus(
                  child: Obx(
                    () => IconButton(
                      splashRadius: 1,
                      onPressed: () => controller.obscureText.toggle(),
                      icon: controller.obscureText.value
                          ? Icon(
                              Icons.visibility_off,
                              color: controller.focusNode.value
                                  ? Colors.black
                                  : Colors.grey,
                            )
                          : Icon(
                              Icons.visibility,
                              color: controller.focusNode.value
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              DefaultTextFormFieldWidget(
                icons: "assets/icons/lock.svg",
                hintText: "New Password",
                suffixIcon: Focus(
                  child: Obx(
                    () => IconButton(
                      splashRadius: 1,
                      onPressed: () => controller.obscureText.toggle(),
                      icon: controller.obscureText.value
                          ? Icon(
                              Icons.visibility_off,
                              color: controller.focusNode.value
                                  ? Colors.black
                                  : Colors.grey,
                            )
                          : Icon(
                              Icons.visibility,
                              color: controller.focusNode.value
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 100),
                child: CheckBoxWidget(),
              ),
              const SizedBox(height: 32),
              DefaultButtonWidget(
                title: "Continue",
                onPressed: () {
                  Get.dialog(AlertDialog(
                    content: Container(
                      height: 400,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(14),
                              child: SvgPicture.asset(
                                "assets/icons/check-shield.svg",
                                height: 100,
                                width: 100,
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            "Congratulations !!",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            "Your account already to use. You will be redirected to Home page a few seconds..",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Lottie.asset("assets/lottie/loading.json",
                              height: 100),
                        ],
                      ),
                    ),
                  ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
