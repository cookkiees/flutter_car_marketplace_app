import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routings/app_routers.dart';
import 'home_controller.dart';
import 'widgets/appbar_home_widget.dart';
import 'widgets/header_text_widget.dart';
import 'widgets/menu_widget.dart';
import 'widgets/spesial_offers_carouselslider_widget.dart';
import 'widgets/tabbar_and_tabbarviews_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 140), child: AppbarHomeWidget()),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              HeaderTextWidget(
                title: "Special Offers",
                trailing: TextButton(
                  onPressed: () => Get.toNamed(AppRouters.specialOffers),
                  child: const Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SpecialOffersSCarouselSliderWidget(
                initilaPage: 0,
                autoPlay: true,
              ),
              const SizedBox(height: 32),
              const MenuWidget(),
              const SizedBox(height: 16),
              HeaderTextWidget(
                title: "Top Deals",
                trailing: TextButton(
                  onPressed: () => Get.toNamed(AppRouters.topDeals),
                  child: const Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const TabbarAndTabbarViewsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
