import 'package:flutter/material.dart';

class BoxChatWidget extends StatelessWidget {
  const BoxChatWidget({
    super.key,
    required this.aligment,
    required this.color,
    required this.text,
    required this.time,
    required this.textColor,
    required this.inAligment,
    required this.topLeft,
    required this.topRight,
    this.textAlignText,
    this.textAlignTime,
  });
  final AlignmentGeometry aligment;
  final AlignmentGeometry inAligment;
  final Color color;
  final Color textColor;
  final String text;
  final String time;
  final Radius topLeft;
  final Radius topRight;

  final TextAlign? textAlignText;
  final TextAlign? textAlignTime;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: aligment,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        padding: const EdgeInsets.all(16),
        alignment: inAligment,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: topLeft,
            topRight: topRight,
            bottomLeft: const Radius.circular(16),
            bottomRight: const Radius.circular(16),
          ),
        ),
        child: Stack(
          children: [
            Text(
              text,
              textAlign: textAlignText,
              style: TextStyle(color: textColor),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                time,
                textAlign: textAlignTime,
                style: TextStyle(color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
