import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import '../auth/widgets/default_buttoon_widget.dart';
import '../components/appbar_widget.dart';
import '../components/car_condition_widget.dart';
import '../home/widgets/header_text_widget.dart';
import 'details_controller.dart';

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
                Center(
                  child: Image.asset(
                    "assets/images/camaro-sports.png",
                    height: 200,
                  ),
                ),
                const SizedBox(height: 24),
                Center(
                  child: SizedBox(
                    height: 30,
                    width: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (ctx, i) {
                        return Obx(
                          () => InkWell(
                            splashColor: Colors.transparent,
                            onTap: () {
                              controller.changeTabIndex(i);
                            },
                            child: CircleAvatar(
                              radius: 28.0,
                              backgroundColor: controller.color[i],
                              child: (controller.tabIndex.value == i)
                                  ? const Icon(Icons.check,
                                      size: 18, color: Colors.black)
                                  : const SizedBox(),
                            ),
                          ),
                        );
                      },
                    ),
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
                const SizedBox(height: 16),
                Row(
                  children: [
                    const CarConditionWidget(title: "New"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SvgPicture.asset("assets/icons/star.svg"),
                    ),
                    const Text("5.0 (86 Reiews)")
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: HeaderTextWidget(
                    title: "Description",
                    trailing: SizedBox(),
                  ),
                ),
                const ReadMoreText(
                  'cars produced by General Motors under the Chevrolet brand. This car is classified as a pony car[1][2] and some versions are categorized as a muscle car.[3][4] This car was first sold on September 29, 1967. It was designed to compete with the Ford Mustang. This car uses the same platform and some components as the Pontiac Firebird.',
                  trimLines: 3,
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  style: TextStyle(fontSize: 16),
                  moreStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
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
                    itemCount: 10,
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
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/images/camaro-sports.png",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/chevrolet.png",
                        height: 45,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Chevrolet Store",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset(
                                "assets/icons/icon-verified.svg",
                                height: 25,
                              )
                            ],
                          ),
                          const Text(
                            "Official Account of Chevrolet",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/icons/chat-2.svg",
                              height: 25,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/icons/phone.svg",
                              height: 25,
                            ),
                          ),
                        ],
                      ),
                    ],
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
