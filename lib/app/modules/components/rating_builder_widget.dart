import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../home/home_controller.dart';
import '../home/widgets/filter_menu_item_widget.dart';

class RatingBuilderWidget extends GetView<HomeController> {
  const RatingBuilderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          itemCount: controller.rating.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.antiAlias,
          itemBuilder: (context, index) {
            return Obx(
              () => FilterMenuItemWidget(
                onTap: () {
                  controller.onRatingChanged(index);
                },
                boxColor: controller.ratingIndex.value == index
                    ? Colors.black
                    : Colors.white,
                textColor: controller.ratingIndex.value == index
                    ? Colors.white
                    : Colors.black,
                widget: SvgPicture.asset(
                  "assets/icons/star.svg",
                  height: 18,
                  colorFilter: controller.ratingIndex.value == index
                      ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
                      : const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                ),
                title: controller.rating[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
