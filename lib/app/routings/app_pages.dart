import 'package:flutter_car_marketplace_app/app/modules/auth/auth_binding.dart';
import 'package:flutter_car_marketplace_app/app/modules/auth/auth_page.dart';
import 'package:flutter_car_marketplace_app/app/modules/auth/signin/signin_page.dart';
import 'package:get/get.dart';
import '../modules/onboarding/onboarding_screen.dart';
import '../modules/onboarding/onborading_binding.dart';
import 'app_routers.dart';

class AppPages {
  static const initial = AppRouters.auth;

  static final routes = [
    GetPage(
      name: AppRouters.onboarding,
      page: () => const OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRouters.auth,
      page: () => const AuthPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRouters.login,
      page: () => const SignInPage(),
      binding: AuthBinding(),
    ),
  ];
}
