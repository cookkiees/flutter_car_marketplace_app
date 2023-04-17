import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config/size_config.dart';
import '../../routings/app_routers.dart';
import 'auth_controller.dart';
import 'widgets/button_continue_widget.dart';
import 'widgets/default_buttoon_widget.dart';
import 'widgets/divider_text_widget.dart';
import 'widgets/richtext_button_widget.dart';
import 'widgets/title_widget.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/camaro-sports.png"),
                const SizedBox(
                  height: 50,
                ),
                const TitleWidget(
                  title: "Let's you in",
                ),
                const SizedBox(
                  height: 40,
                ),
                const ButtonContinueWidget(
                  icons: 'assets/icons/facebook.svg',
                  title: 'Continue with Facebook',
                ),
                const SizedBox(
                  height: 16,
                ),
                const ButtonContinueWidget(
                  icons: 'assets/icons/google.svg',
                  title: 'Continue with Google',
                ),
                const SizedBox(
                  height: 16,
                ),
                const ButtonContinueWidget(
                  icons: 'assets/icons/apple.svg',
                  title: 'Continue with Apple',
                ),
                const SizedBox(
                  height: 50,
                ),
                const DividerTextWidget(
                  title: "OR",
                  centerFlex: 1,
                ),
                const SizedBox(
                  height: 50,
                ),
                DefaultButtonWidget(
                  title: 'Sign in with password',
                  onPressed: () => Get.toNamed(AppRouters.signIn),
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
