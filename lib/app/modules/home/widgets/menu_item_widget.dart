import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    super.key,
    required this.logo,
    this.height,
    this.padding,
    this.width,
    this.fit,
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.color,
    required this.title,
    this.onPressed,
  });
  final String logo;
  final String title;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  final Color? color;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              padding: padding,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
              ),
            ),
            Positioned(
              left: left,
              top: top,
              right: right,
              bottom: bottom,
              child: Image.asset(
                "assets/images/$logo.png",
                color: color,
                height: height,
                width: width,
                fit: fit,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.grey,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                minimumSize: const Size(80, 80),
              ),
              onPressed: onPressed,
              child: null,
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
