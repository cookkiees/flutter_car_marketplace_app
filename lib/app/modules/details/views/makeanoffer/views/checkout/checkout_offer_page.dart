import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/modules/auth/widgets/default_buttoon_widget.dart';
import 'package:flutter_car_marketplace_app/app/modules/profile/views/Address/shipping_address_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../../components/appbar_widget.dart';
import '../../../../../home/widgets/header_text_widget.dart';
import '../../../../widgets/box_shipping.dart';
import '../../../../widgets/table_widget.dart';

class CheckoutOfferPage extends StatelessWidget {
  const CheckoutOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBarWidget(
          title: Row(
            children: const [
              Text(
                "Checkout",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/more.svg"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: HeaderTextWidget(
                  title: "Shipping Address",
                  trailing: SizedBox(),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: BoxShipping(
                  icon: "assets/icons/pin.svg",
                  title: "Home",
                  address: "61480 Sunbrook Park, PC 1679",
                  widget: IconButton(
                    onPressed: () => Get.to(() => const ShippingAddressPage()),
                    icon: SvgPicture.asset("assets/icons/edit.svg"),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: HeaderTextWidget(
                  title: "Order",
                  trailing: SizedBox(),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: Container(
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
                              )
                            ],
                          ),
                          const Text(
                            "\$ 170.000",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: HeaderTextWidget(
                  title: "Choose Shipping",
                  trailing: SizedBox(),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
                child: Container(
                  width: MediaQuery.of(context).size.height,
                  height: 70,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icons/truck.png",
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        "Choose Shipping Type",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 230,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    TableWidget(
                      title: "Amount",
                      price: "\$ 170.000",
                    ),
                    TableWidget(
                      title: "Shipping",
                      price: "-",
                    ),
                    TableWidget(
                      title: "Tax",
                      price: "\$ 1000",
                    ),
                    Divider(height: 1, thickness: 1),
                    TableWidget(
                      title: "Total",
                      price: "-",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const DefaultButtonWidget(title: "Continue to Payment")
            ],
          ),
        ),
      ),
    );
  }
}
