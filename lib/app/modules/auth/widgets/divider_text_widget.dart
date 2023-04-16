import 'package:flutter/material.dart';

class DividerTextWidget extends StatelessWidget {
  const DividerTextWidget({
    super.key,
    required this.title,
    required this.centerFlex,
  });
  final String title;
  final int centerFlex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Divider(
            thickness: 1,
            color: Colors.grey.shade300,
          ),
        ),
        Expanded(
          flex: centerFlex,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),
        ),
        Expanded(
          flex: 2,
          child: Divider(
            thickness: 1,
            color: Colors.grey.shade300,
          ),
        ),
      ],
    );
  }
}
