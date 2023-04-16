import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/modules/components/default_textformfield_widget.dart';
import 'package:flutter_car_marketplace_app/app/modules/home/home_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AppbarHomeWidget extends GetView<HomeController> {
  const AppbarHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good Morning",
            style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "JEJE ",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      leadingWidth: 90,
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(
          "https://i.ibb.co/PGv8ZzG/me.jpg",
        ),
      ),
      actions: [
        IconButton(
          splashRadius: 20,
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/bell.svg",
            height: 28,
          ),
        ),
        Obx(() => IconButton(
              splashRadius: 20,
              onPressed: () {
                controller.toggleFavorites();
              },
              icon: controller.isFavorite.value
                  ? SvgPicture.asset(
                      "assets/icons/favorite-2.svg",
                      height: 28,
                    )
                  : SvgPicture.asset(
                      "assets/icons/favorite-1.svg",
                      height: 28,
                    ),
            )),
        const SizedBox(width: 8)
      ],
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: DefaultTextFormFieldWidget(
              icons: "assets/icons/search.svg",
              hintText: "Search",
              suffixIcon: SvgPicture.asset(
                "assets/icons/filter.svg",
                height: 30,
                width: 30,
                fit: BoxFit.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
