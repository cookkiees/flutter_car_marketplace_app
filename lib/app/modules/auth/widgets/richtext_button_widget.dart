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
              style: const TextStyle(
                  fontWeight: FontWeight.w300, color: Colors.black),
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
