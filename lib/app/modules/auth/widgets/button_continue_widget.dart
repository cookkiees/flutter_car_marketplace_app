import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonContinueWidget extends StatelessWidget {
  const ButtonContinueWidget({
    super.key,
    required this.icons,
    required this.title,
    this.onPressed,
  });
  final String icons;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        disabledBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey.shade300, width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icons),
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
