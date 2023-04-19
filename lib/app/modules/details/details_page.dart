import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/routings/app_routers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../auth/widgets/default_buttoon_widget.dart';
import '../components/appbar_widget.dart';
import '../components/car_condition_widget.dart';
import '../home/widgets/header_text_widget.dart';
import 'details_controller.dart';
import 'widgets/description_details_widget.dart';
import 'widgets/profile_sales_widget.dart';
import 'widgets/tabbarr_details_widget.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({super.key});

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
                "",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            Obx(
              () => IconButton(
                splashRadius: 20,
                onPressed: () {
                  controller.toggleFavorites();
                },
                icon: controller.isFavorite.value
                    ? SvgPicture.asset("assets/icons/favorite-2.svg",
                        height: 28)
                    : SvgPicture.asset("assets/icons/favorite-1.svg",
                        height: 28),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultTabController(
                  length: 6,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: SizedBox(
                          height: 250,
                          child: TabBarView(
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              Image.asset("assets/images/red-camaro.png"),
                              Image.asset("assets/images/camaro-sports.png"),
                              Image.asset("assets/images/blue-camaro.png"),
                              Image.asset("assets/images/black-camaro.png"),
                              Image.asset("assets/images/silver-camaro.png"),
                              Image.asset("assets/images/white-camaro.png"),
                            ],
                          ),
                        ),
                      ),
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
                        unselectedLabelColor: Colors.transparent,
                        labelColor: Colors.black,
                        dividerColor: Colors.transparent,
                        labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                        indicatorPadding:
                            const EdgeInsets.only(left: 8, bottom: 1, right: 8),
                        indicator: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        tabs: [
                          const TabbarDetailsWidget(color: Colors.red),
                          const TabbarDetailsWidget(color: Colors.yellow),
                          const TabbarDetailsWidget(color: Colors.blue),
                          const TabbarDetailsWidget(color: Colors.black54),
                          const TabbarDetailsWidget(color: Colors.grey),
                          TabbarDetailsWidget(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  "Camaro Sports",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const CarConditionWidget(title: "New"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SvgPicture.asset("assets/icons/star.svg"),
                    ),
                    TextButton(
                      onPressed: () => Get.toNamed(AppRouters.reviews),
                      child: const Text(
                        "5.0 (86 Reiews)",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
                const DescriptionDetailsWidget(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: HeaderTextWidget(
                    title: "Galery Photos",
                    trailing: SizedBox(),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.antiAlias,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            controller.camaro[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const ProfileSalesWidget(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Price",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "\$ 175.000",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: DefaultButtonWidget(
                        title: "Make on Offer",
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
