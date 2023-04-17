import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../home_controller.dart';
import '../widgets/card_item_widget.dart';

class TabViewsMercedesWidget extends GetView<HomeController> {
  const TabViewsMercedesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: controller.mercedes.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 16, childAspectRatio: 2 / 2.5),
        itemBuilder: (ctx, i) {
          return Obx(
            () => CardItemWidget(
              image: controller.mercedes[i],
              name: "Mercedes",
              onPressed: () => controller.toggleFavorite(i),
              icon: controller.favoritesList.contains(i)
                  ? SvgPicture.asset("assets/icons/favorite-2.svg")
                  : SvgPicture.asset("assets/icons/favorite-1.svg"),
            ),
          );
        },
      ),
    );
  }
}
