import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/modules/details/views/makeanoffer/views/checkout/checkout_offer_page.dart';
import 'package:get/get.dart';
import '../../../../../auth/widgets/default_buttoon_widget.dart';
import '../../../../../components/appbar_widget.dart';

class AcceptedOfferPage extends StatelessWidget {
  const AcceptedOfferPage({super.key});

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
              "Congrats! your offer has been accepted",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Your offer has been accepted by the seller fo \$ 170.000",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 300),
            DefaultButtonWidget(
              title: "Proceed to Checkout",
              onPressed: () => Get.to(() => const CheckoutOfferPage()),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
