import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NormalButtonWidget extends StatelessWidget {
  const NormalButtonWidget({
    super.key,
    required this.icons,
    this.onPressed,
  });
  final String icons;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          minimumSize: const Size(90, 60),
          disabledBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12))),
      onPressed: onPressed,
      child: SvgPicture.asset(icons),
    );
  }
}
