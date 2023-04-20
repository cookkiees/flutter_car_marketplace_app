import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/modules/auth/widgets/default_buttoon_widget.dart';
import 'package:flutter_car_marketplace_app/app/routings/app_routers.dart';
import 'package:get/get.dart';

import '../../../../../components/appbar_widget.dart';

class ProsesOfferPage extends StatelessWidget {
  const ProsesOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBarWidget(
          title: Row(
            children: const [
              Text(
                "Make an Offer",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "Your over is being processed",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Please check notifications periodically to see if your over was accepted or rejected by the seller",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 300),
            DefaultButtonWidget(
              title: "Back to  home",
              onPressed: () => Get.toNamed(AppRouters.home),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
