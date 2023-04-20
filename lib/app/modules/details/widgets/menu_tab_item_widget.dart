import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/modules/details/details_controller.dart';
import 'package:get/get.dart';

class MenuTabItemWidget extends GetView<DetailsController> {
  const MenuTabItemWidget({
    super.key,
    required this.onPressed,
    required this.title,
    required this.backgroundColor,
    required this.textColor,
  });
  final VoidCallback onPressed;
  final String title;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 110,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(width: 1.5),
        borderRadius: BorderRadius.circular(32),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shadowColor: Colors.transparent,
            elevation: 0,
            backgroundColor: Colors.transparent),
        onPressed: onPressed,
        child: Text(
          title,
          maxLines: 1,
          style: TextStyle(
              fontSize: 14, color: textColor, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
