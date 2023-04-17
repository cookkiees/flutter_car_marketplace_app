import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../auth/widgets/default_buttoon_widget.dart';
import '../home_controller.dart';
import 'filter_menu_item_widget.dart';
import 'header_text_widget.dart';

class BottomSheetViewsWidget extends GetView<HomeController> {
  const BottomSheetViewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        border: Border.all(),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Sort & Filter",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    controller.hideBottomSheet();
                  },
                  icon: const Icon(Icons.close),
                )
              ],
            ),
          ),
          const Divider(thickness: 1.2),
          const HeaderTextWidget(
            title: "Car Brands",
            trailing: SizedBox(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              height: 30,
              child: ListView.builder(
                itemCount: controller.carBrands.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.antiAlias,
                itemBuilder: (context, index) {
                  return Obx(() => FilterMenuItemWidget(
                        onTap: () {
                          controller.onCarBrandsChanged(index);
                        },
                        boxColor: controller.carBrandsIndex.value == index
                            ? Colors.black
                            : Colors.white,
                        textColor: controller.carBrandsIndex.value == index
                            ? Colors.white
                            : Colors.black,
                        widget: const SizedBox(),
                        title: controller.carBrands[index],
                      ));
                },
              ),
            ),
          ),
          const HeaderTextWidget(
            title: "Car Condition",
            trailing: SizedBox(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              height: 30,
              child: ListView.builder(
                itemCount: controller.carCondition.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.antiAlias,
                itemBuilder: (context, index) {
                  return Obx(() => FilterMenuItemWidget(
                        onTap: () {
                          controller.onCarConditionChanged(index);
                        },
                        boxColor: controller.carConditionIndex.value == index
                            ? Colors.black
                            : Colors.white,
                        textColor: controller.carConditionIndex.value == index
                            ? Colors.white
                            : Colors.black,
                        widget: const SizedBox(),
                        title: controller.carCondition[index],
                      ));
                },
              ),
            ),
          ),
          const HeaderTextWidget(
            title: "Sort by",
            trailing: SizedBox(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              height: 30,
              child: ListView.builder(
                itemCount: controller.sortBy.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.antiAlias,
                itemBuilder: (context, index) {
                  return Obx(() => FilterMenuItemWidget(
                        onTap: () {
                          controller.onSortbyChanged(index);
                        },
                        boxColor: controller.sortbyIndex.value == index
                            ? Colors.black
                            : Colors.white,
                        textColor: controller.sortbyIndex.value == index
                            ? Colors.white
                            : Colors.black,
                        widget: const SizedBox(),
                        title: controller.sortBy[index],
                      ));
                },
              ),
            ),
          ),
          const HeaderTextWidget(
            title: "Rating",
            trailing: SizedBox(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              height: 30,
              child: ListView.builder(
                itemCount: controller.rating.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.antiAlias,
                itemBuilder: (context, index) {
                  return Obx(() => FilterMenuItemWidget(
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
                          colorFilter: controller.ratingIndex.value == index
                              ? const ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn)
                              : const ColorFilter.mode(
                                  Colors.black, BlendMode.srcIn),
                        ),
                        title: controller.rating[index],
                      ));
                },
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: DefaultButtonWidget(
                  title: "Reset",
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: DefaultButtonWidget(
                  title: "Aplly",
                  onPressed: () {},
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
