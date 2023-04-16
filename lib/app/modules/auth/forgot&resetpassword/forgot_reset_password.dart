import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../routings/app_routers.dart';
import '../auth_controller.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/default_buttoon_widget.dart';

class ForgotResetPasswordPage extends GetView<AuthController> {
  const ForgotResetPasswordPage({super.key});

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
                "Forgot Password",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Lottie.asset("assets/lottie/forgot-password.json", height: 260),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "Select with contact details should we use to reset your password",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 32),
                child: SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemCount: 2,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, i) {
                      return Obx(
                        () => GestureDetector(
                          onTap: () {
                            controller.changeTabIndex(i);
                          },
                          child: Container(
                            height: 125,
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: controller.tabIndex.value == i
                                    ? Colors.black
                                    : Colors.grey.shade300,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.grey.shade200,
                                    child: SvgPicture.asset(
                                      controller.iconResetPassword[i],
                                    ),
                                  ),
                                  const SizedBox(width: 24),
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                "${controller.viaResetPassword[i]} :",
                                            style: TextStyle(
                                                color: Colors.grey.shade500)),
                                        const TextSpan(
                                            text: '\n ',
                                            style:
                                                TextStyle(color: Colors.black)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              DefaultButtonWidget(
                title: "Continue",
                onPressed: () => Get.toNamed(
                  AppRouters.verify,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
