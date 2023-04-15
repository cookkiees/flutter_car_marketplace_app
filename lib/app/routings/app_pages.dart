import 'package:get/get.dart';
import '../modules/auth/auth_binding.dart';
import '../modules/auth/auth_page.dart';
import '../modules/auth/signin/signin_page.dart';
import '../modules/auth/signup/signup_page.dart';
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
      name: AppRouters.signIn,
      page: () => const SignInPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRouters.signUp,
      page: () => const SignUpPage(),
      binding: AuthBinding(),
    ),
  ];
}
