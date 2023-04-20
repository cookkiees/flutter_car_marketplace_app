import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({
    super.key,
    required this.title,
    required this.price,
  });
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          price,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
