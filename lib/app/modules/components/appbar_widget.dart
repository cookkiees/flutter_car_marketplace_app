import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    this.title,
    this.actions,
    this.backgroundColor = Colors.white,
  });
  final Widget? title;
  final List<Widget>? actions;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: title,
      backgroundColor: backgroundColor,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      actions: actions,
    );
  }
}
