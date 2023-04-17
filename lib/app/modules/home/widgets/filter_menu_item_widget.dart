import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home_controller.dart';

class FilterMenuItemWidget extends GetView<HomeController> {
  const FilterMenuItemWidget(
      {super.key,
      required this.title,
      required this.widget,
      required this.boxColor,
      required this.textColor,
      required this.onTap});

  final String title;
  final Widget widget;
  final Color boxColor;
  final Color textColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black, width: 1.5),
          ),
          child: Row(
            children: [
              widget,
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w500, color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
