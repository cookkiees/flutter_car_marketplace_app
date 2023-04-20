import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoxShipping extends StatelessWidget {
  const BoxShipping({
    super.key,
    required this.icon,
    required this.title,
    required this.address,
    required this.widget,
  });
  final String icon;
  final String title;
  final String address;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28.0,
            backgroundColor: Colors.black,
            child: SvgPicture.asset(
              icon,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                address,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          const SizedBox(width: 35),
          widget
        ],
      ),
    );
  }
}
