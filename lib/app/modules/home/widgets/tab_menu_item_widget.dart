import 'package:flutter/material.dart';

class TabMenuItemWidget extends StatelessWidget {
  const TabMenuItemWidget({
    super.key,
    required this.text,
    required this.width,
  });
  final String text;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.black)),
      child: Tab(
        text: text,
      ),
    );
  }
}
