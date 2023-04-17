import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/routings/app_routers.dart';
import 'package:get/get.dart';
import '../auth_controller.dart';
import '../../components/appbar_widget.dart';
import '../widgets/default_buttoon_widget.dart';
import '../../components/default_textformfield_widget.dart';
import '../widgets/divider_text_widget.dart';
import '../widgets/normal_button_widget.dart';
import '../widgets/richtext_button_widget.dart';
import '../widgets/title_widget.dart';

class SignUpPage extends GetView<AuthController> {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 60), child: AppBarWidget()),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Image.asset("assets/images/camaro-sports.png"),
                const SizedBox(height: 32),
                const TitleWidget(title: "Create Your Account"),
                const SizedBox(height: 32),
                const DefaultTextFormFieldWidget(
                  icons: "assets/icons/mail-1.svg",
                  hintText: " Email",
                ),
                const SizedBox(height: 16),
                DefaultTextFormFieldWidget(
                  icons: "assets/icons/lock.svg",
                  hintText: " Password",
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
                const SizedBox(height: 8),
                Row(
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
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 32),
                const DefaultButtonWidget(title: "Sign up"),
                const SizedBox(height: 32),
                const DividerTextWidget(
                  title: "OR CONTINUE WITH",
                  centerFlex: 3,
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    NormalButtonWidget(
                      icons: "assets/icons/facebook.svg",
                    ),
                    NormalButtonWidget(
                      icons: "assets/icons/google.svg",
                    ),
                    NormalButtonWidget(
                      icons: "assets/icons/apple.svg",
                    )
                  ],
                ),
                const SizedBox(height: 24),
                RichTextButtonWidget(
                  title: "Already have an account?",
                  subtitle: " Sign in",
                  onPressed: () => Get.toNamed(AppRouters.signIn),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
