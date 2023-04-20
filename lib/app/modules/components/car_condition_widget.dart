import 'package:flutter/material.dart';

class CarConditionWidget extends StatelessWidget {
  const CarConditionWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(4)),
      child: Text(
        title,
        style: TextStyle(color: Colors.grey.shade900, fontSize: 12),
      ),
    );
  }
}
