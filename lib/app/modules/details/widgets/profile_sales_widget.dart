import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/routings/app_routers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileSalesWidget extends StatelessWidget {
  const ProfileSalesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SvgPicture.asset(
                    "assets/icons/icon-verified.svg",
                    height: 25,
                  )
                ],
              ),
              const Text(
                "Official Account of Chevrolet",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () => Get.toNamed(AppRouters.roomChat),
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
    );
  }
}
