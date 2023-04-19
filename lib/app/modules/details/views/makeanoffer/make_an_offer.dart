import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/modules/auth/widgets/default_buttoon_widget.dart';
import 'package:flutter_car_marketplace_app/app/modules/details/details_controller.dart';
import 'package:get/get.dart';

import '../../../../utils/my_colors.dart';
import '../../../components/appbar_widget.dart';
import '../../widgets/menu_tab_item_widget.dart';

class MakeAnOfferPage extends GetView<DetailsController> {
  const MakeAnOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBarWidget(
          title: Row(
            children: const [
              Text(
                "Make an Offer",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Text(
                "Enter your offer amount",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              GetX<DetailsController>(
                init: DetailsController(),
                initState: (_) {},
                builder: (_) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 16, right: 16),
                      child: Center(
                        child: Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: [
                            controller.getPageProduct(),
                            MenuTabItemWidget(
                              title: "\$174.500",
                              onPressed: () => controller.changePageProduct(0),
                              backgroundColor:
                                  controller.tabProductIndex.value == 0
                                      ? Colors.black
                                      : Colors.white,
                              textColor: controller.tabProductIndex.value == 0
                                  ? Colors.white
                                  : MyColors.dark,
                            ),
                            MenuTabItemWidget(
                              title: "\$174.000",
                              onPressed: () => controller.changePageProduct(1),
                              backgroundColor:
                                  controller.tabProductIndex.value == 1
                                      ? Colors.black
                                      : Colors.white,
                              textColor: controller.tabProductIndex.value == 1
                                  ? Colors.white
                                  : MyColors.dark,
                            ),
                            MenuTabItemWidget(
                              title: "\$173.500",
                              onPressed: () => controller.changePageProduct(2),
                              backgroundColor:
                                  controller.tabProductIndex.value == 2
                                      ? Colors.black
                                      : Colors.white,
                              textColor: controller.tabProductIndex.value == 2
                                  ? Colors.white
                                  : MyColors.dark,
                            ),
                            MenuTabItemWidget(
                              title: "\$173.000",
                              onPressed: () => controller.changePageProduct(3),
                              backgroundColor:
                                  controller.tabProductIndex.value == 3
                                      ? Colors.black
                                      : Colors.white,
                              textColor: controller.tabProductIndex.value == 3
                                  ? Colors.white
                                  : MyColors.dark,
                            ),
                            MenuTabItemWidget(
                              title: "\$172.500",
                              onPressed: () => controller.changePageProduct(4),
                              backgroundColor:
                                  controller.tabProductIndex.value == 4
                                      ? Colors.black
                                      : Colors.white,
                              textColor: controller.tabProductIndex.value == 4
                                  ? Colors.white
                                  : MyColors.dark,
                            ),
                            MenuTabItemWidget(
                              title: "\$172.000",
                              onPressed: () => controller.changePageProduct(5),
                              backgroundColor:
                                  controller.tabProductIndex.value == 5
                                      ? Colors.black
                                      : Colors.white,
                              textColor: controller.tabProductIndex.value == 5
                                  ? Colors.white
                                  : MyColors.dark,
                            ),
                            MenuTabItemWidget(
                              title: "\$171.500",
                              onPressed: () => controller.changePageProduct(6),
                              backgroundColor:
                                  controller.tabProductIndex.value == 6
                                      ? Colors.black
                                      : Colors.white,
                              textColor: controller.tabProductIndex.value == 6
                                  ? Colors.white
                                  : MyColors.dark,
                            ),
                            MenuTabItemWidget(
                              title: "\$171.000",
                              onPressed: () => controller.changePageProduct(7),
                              backgroundColor:
                                  controller.tabProductIndex.value == 7
                                      ? Colors.black
                                      : Colors.white,
                              textColor: controller.tabProductIndex.value == 7
                                  ? Colors.white
                                  : MyColors.dark,
                            ),
                            MenuTabItemWidget(
                              title: "\$170.500",
                              onPressed: () => controller.changePageProduct(8),
                              backgroundColor:
                                  controller.tabProductIndex.value == 8
                                      ? Colors.black
                                      : Colors.white,
                              textColor: controller.tabProductIndex.value == 8
                                  ? Colors.white
                                  : MyColors.dark,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 32),
              DefaultButtonWidget(
                title: "Send Offer",
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
