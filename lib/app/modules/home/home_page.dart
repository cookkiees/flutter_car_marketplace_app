import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import 'tabviews/tab_views_all_widget.dart';
import 'widgets/appbar_home_widget.dart';
import 'widgets/header_text_widget.dart';
import 'widgets/menu_widget.dart';
import 'widgets/spesial_offers_carouselslider_widget.dart';
import 'widgets/tab_menu_item_widget.dart';

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
              const HeaderTextWidget(
                title: "Special Offers",
                trailing: "See All",
              ),
              const SpecialOffersSCarouselSliderWidget(),
              const SizedBox(height: 10.0),
              Obx(
                () => DotsIndicator(
                  dotsCount: controller.image.length,
                  position: controller.currentIndex.toDouble(),
                  decorator: DotsDecorator(
                    activeColor: Colors.amber,
                    size: const Size.square(8.0),
                    activeSize: const Size(16.0, 8.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const MenuWidget(),
              const SizedBox(height: 32),
              DefaultTabController(
                length: 8,
                child: Column(
                  children: <Widget>[
                    TabBar(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        return states.contains(MaterialState.focused)
                            ? null
                            : Colors.transparent;
                      }),
                      isScrollable: true,
                      splashFactory: NoSplash.splashFactory,
                      labelStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600),
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.white,
                      dividerColor: Colors.black,
                      labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                      indicatorPadding:
                          const EdgeInsets.only(left: 8, bottom: 1, right: 8),
                      indicator: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.grey.shade100),
                        color: Colors.black,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(24),
                        ),
                      ),
                      tabs: const [
                        TabMenuItemWidget(text: "All", width: 70),
                        TabMenuItemWidget(text: "Mercedes", width: 100),
                        TabMenuItemWidget(text: "Tesla", width: 80),
                        TabMenuItemWidget(text: "BMW", width: 80),
                        TabMenuItemWidget(text: "Volvo", width: 80),
                        TabMenuItemWidget(text: "Bugatti", width: 90),
                        TabMenuItemWidget(text: "Honda", width: 80),
                        TabMenuItemWidget(text: "Audi", width: 70),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 1.2,
                        child: TabBarView(
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            const TabViewsAllWidget(),
                            Container(
                              color: Colors.white,
                            ),
                            Container(
                              color: Colors.white,
                            ),
                            Container(
                              color: Colors.white,
                            ),
                            Container(
                              color: Colors.white,
                            ),
                            Container(
                              color: Colors.white,
                            ),
                            Container(
                              color: Colors.white,
                            ),
                            Container(
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
