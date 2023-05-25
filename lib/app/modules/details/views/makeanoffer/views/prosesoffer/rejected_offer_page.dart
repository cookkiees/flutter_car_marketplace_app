import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/modules/auth/widgets/default_buttoon_widget.dart';
import 'package:flutter_car_marketplace_app/app/routings/app_routers.dart';
import 'package:get/get.dart';

import '../../../../../components/appbar_widget.dart';

class RejectedOfferPage extends StatelessWidget {
  const RejectedOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AppBarWidget(
          title: Row(
            children: [
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
              "We are sorry, your offer has been rejected ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Don't worry, you will always be able to make another offer that is more suitable, so that your offer is accepted",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 300),
            DefaultButtonWidget(
                title: "Make an Offer Again",
                onPressed: () => Get.toNamed(AppRouters.makeAnOffer)),
            const SizedBox(height: 16),
            DefaultButtonWidget(
              title: "Back to  home",
              onPressed: () => Get.toNamed(AppRouters.main),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
