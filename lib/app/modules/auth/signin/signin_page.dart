import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routings/app_routers.dart';
import '../auth_controller.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/checkbox_widget.dart';
import '../widgets/default_buttoon_widget.dart';
import '../../components/default_textformfield_widget.dart';
import '../widgets/divider_text_widget.dart';
import '../widgets/normal_button_widget.dart';
import '../widgets/richtext_button_widget.dart';
import '../widgets/title_widget.dart';

class SignInPage extends GetView<AuthController> {
  const SignInPage({Key? key}) : super(key: key);

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
                const TitleWidget(title: "Login to Your Account"),
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
                const CheckBoxWidget(),
                const SizedBox(height: 32),
                DefaultButtonWidget(
                  title: "Sign in",
                  onPressed: () => Get.toNamed(
                    AppRouters.main,
                  ),
                ),
                TextButton(
                  onPressed: () => Get.toNamed(AppRouters.forgotResetPassword),
                  child: const Text(
                    "Forgot the password?",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 8),
                const DividerTextWidget(
                  title: "OR CONTINUE WITH",
                  centerFlex: 3,
                ),
                const SizedBox(height: 24),
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
                RichTextButtonWidget(
                  title: "Don't have an account?",
                  subtitle: " Sign up",
                  onPressed: () => Get.toNamed(AppRouters.signUp),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
