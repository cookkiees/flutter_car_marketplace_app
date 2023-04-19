import 'package:flutter/material.dart';

class TabbarDetailsWidget extends StatelessWidget {
  const TabbarDetailsWidget({
    super.key,
    required this.color,
    this.border,
  });
  final Color color;
  final BoxBorder? border;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      decoration:
          BoxDecoration(color: color, shape: BoxShape.circle, border: border),
      child: const Tab(
        icon: Icon(
          Icons.check,
        ),
      ),
    );
  }
}
