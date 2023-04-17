import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/routings/app_routers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../components/car_condition_widget.dart';
import '../home_controller.dart';

class CardItemWidget extends GetView<HomeController> {
  const CardItemWidget({
    super.key,
    required this.image,
    required this.onPressed,
    required this.icon,
    required this.name,
    this.padding,
  });
  final String image;
  final void Function()? onPressed;
  final Widget icon;
  final String name;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          width: 200,
          padding: padding,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  // controller.car[i],
                  image,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: const Size(200, 150)),
                onPressed: () {
                  Get.toNamed(AppRouters.details);
                },
                child: null,
              ),
              Positioned(
                right: 0,
                child: IconButton(
                  splashRadius: 20,
                  onPressed: onPressed,
                  icon: icon,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // controller.carName[i],
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/star.svg"),
                  const SizedBox(width: 4),
                  const Text("5.0"),
                  const SizedBox(
                    height: 15,
                    width: 20,
                    child: VerticalDivider(
                      thickness: 1,
                      width: 1,
                      color: Colors.black54,
                    ),
                  ),
                  const CarConditionWidget(
                    title: "New",
                  )
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                "\$ 155.000",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
