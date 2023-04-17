import 'package:flutter_car_marketplace_app/app/modules/auth/forgot&resetpassword/create_new_password_page.dart';
import 'package:flutter_car_marketplace_app/app/modules/auth/forgot&resetpassword/verify_page.dart';
import 'package:flutter_car_marketplace_app/app/modules/home/specialoffers/special_offers_page.dart';
import 'package:flutter_car_marketplace_app/app/modules/home/topdeals/top_deals_page.dart';
import 'package:get/get.dart';
import '../modules/auth/auth_binding.dart';
import '../modules/auth/auth_page.dart';
import '../modules/auth/forgot&resetpassword/forgot_reset_password.dart';
import '../modules/auth/signin/signin_page.dart';
import '../modules/auth/signup/signup_page.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_page.dart';
import '../modules/home/mywishlist/mywishlist_page.dart';
import '../modules/home/notifications/notifications_page.dart';
import '../modules/main/main_binding.dart';
import '../modules/main/main_page.dart';
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
    GetPage(
      name: AppRouters.forgotResetPassword,
      page: () => const ForgotResetPasswordPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRouters.verify,
      page: () => const VerifyPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRouters.createNewPassword,
      page: () => const CreateNewPasswordPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRouters.main,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRouters.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouters.notifications,
      page: () => const NotificationsPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouters.myWishlist,
      page: () => const MyWishlistPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouters.specialOffers,
      page: () => const SpecialOffersPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouters.topDeals,
      page: () => const TopDealsPage(),
      binding: HomeBinding(),
    ),
  ];
}
