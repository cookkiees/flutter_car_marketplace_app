import 'package:flutter/material.dart';

import '../auth/widgets/default_buttoon_widget.dart';

class BoxCarOrderWidget extends StatelessWidget {
  const BoxCarOrderWidget({
    super.key,
    required this.visible,
  });
  final bool visible;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 150,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              "assets/images/camaro-sports.png",
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Camaro Sports",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.yellow,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Yellow",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  const SizedBox(width: 8),
                  Visibility(
                    visible: visible,
                    child: Container(
                      height: 20,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        "In Delivery",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Text(
                    "\$ 170.000",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Visibility(
                    visible: visible,
                    child: const SizedBox(
                      width: 115,
                      height: 35,
                      child: DefaultButtonWidget(title: "Track Order"),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
