import 'package:flutter/material.dart';

class RichTextButtonWidget extends StatelessWidget {
  const RichTextButtonWidget({
    super.key,
    required this.title,
    required this.subtitle,
    this.onPressed,
  });

  final String title;
  final String subtitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(),
      onPressed: () {},
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: title,
              style: TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.grey.shade500),
            ),
            TextSpan(
              text: subtitle,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
