import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/modules/order/order_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../components/box_car_order_widget.dart';

class OrderPage extends GetView<OrderController> {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            children: const [
              Text(
                "My Order",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/more.svg"),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.grey.shade500,
            labelColor: Colors.black,
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
            tabs: const [
              Tab(
                text: 'Active',
              ),
              Tab(
                text: 'Complete',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Widget untuk tampilan Tab 1
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return const BoxCarOrderWidget(
                    visible: true,
                  );
                },
              ),
            ),
            // Widget untuk tampilan Tab 2
            const Center(
              child: Text('Complete'),
            ),
          ],
        ),
      ),
    );
  }
}
