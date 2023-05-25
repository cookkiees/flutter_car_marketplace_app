import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/appbar_widget.dart';
import '../../components/default_textformfield_widget.dart';
import '../home_controller.dart';
import '../widgets/bottom_sheet_views_widget.dart';
import '../widgets/tabbar_and_tabbarviews_widget.dart';

class TopDealsPage extends GetView<HomeController> {
  const TopDealsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBarWidget(
          backgroundColor: Colors.grey.shade50,
          title: const Row(
            children: [
              Text(
                "Top Deals",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            Obx(
              () => controller.isSearchOpen.value
                  ? Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: DefaultTextFormFieldWidget(
                          obscureText: false,
                          onPressed: () {
                            controller.toggleBottomSheet();
                          },
                          icons: "assets/icons/filter.svg",
                          hintText: "Search",
                          suffixIcon: IconButton(
                            splashRadius: 30,
                            onPressed: () {
                              controller.toggleSearch();
                            },
                            icon: const Icon(Icons.close, color: Colors.black),
                          ),
                        ),
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        controller.toggleSearch();
                      },
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [TabbarAndTabbarViewsWidget()],
          ),
        ),
      ),
      bottomSheet: Obx(
        () => controller.isBottomSheetOpen.value
            ? const BottomSheetViewsWidget()
            : const SizedBox.shrink(),
      ),
    );
  }
}
