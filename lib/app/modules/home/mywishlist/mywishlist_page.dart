import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../components/appbar_widget.dart';
import '../../components/default_textformfield_widget.dart';
import '../home_controller.dart';
import '../widgets/bottom_sheet_views_widget.dart';
import '../widgets/card_item_widget.dart';

class MyWishlistPage extends GetView<HomeController> {
  const MyWishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBarWidget(
          backgroundColor: Colors.grey.shade50,
          title: Row(
            children: const [
              Text(
                "My Wishlist",
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
                          onPressed: () {
                            controller.toggleBottomSheet();
                          },
                          icons: "assets/icons/filter.svg",
                          hintText: "Search",
                          suffixIcon: IconButton(
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
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      childAspectRatio: 2 / 2.5),
                  itemBuilder: (ctx, i) {
                    return CardItemWidget(
                      image: controller.myListCar[i],
                      name: controller.myListCarName[i],
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons/favorite-2.svg"),
                    );
                  },
                ),
              )
            ],
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
