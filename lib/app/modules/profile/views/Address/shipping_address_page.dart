import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/modules/details/details_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../components/appbar_widget.dart';
import '../../../details/widgets/box_shipping.dart';

class ShippingAddressPage extends GetView<DetailsController> {
  const ShippingAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBarWidget(
          title: Row(
            children: const [
              Text(
                "Shipping Address",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: controller.titleAddress.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: BoxShipping(
                        icon: "assets/icons/pin.svg",
                        title: controller.titleAddress[index],
                        address: "61480 Sunbrook Park, PC 1679",
                        widget: IconButton(
                          onPressed: () =>
                              Get.to(() => const ShippingAddressPage()),
                          icon: SvgPicture.asset("assets/icons/edit.svg"),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
