import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/modules/order/order_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../components/box_car_order_widget.dart';

class InboxPage extends GetView<OrderController> {
  const InboxPage({super.key});

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
                "Inbox",
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
                text: 'Chat',
              ),
              Tab(
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            // Widget untuk tampilan Tab 1
            Center(
              child: Text('Chat'),
            ),
            // Widget untuk tampilan Tab 2
            Center(
              child: Text('Calls'),
            ),
          ],
        ),
      ),
    );
  }
}
