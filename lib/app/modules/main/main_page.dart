import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/modules/home/home_page.dart';
import 'package:flutter_car_marketplace_app/app/modules/order/order_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'main_controller.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {});
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        body: IndexedStack(
          index: controller.tabIndex,
          children: [
            const HomePage(),
            const OrderPage(),
            Container(),
            Container(),
            Container(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.tabIndex,
          selectedLabelStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            fontFamily: "Outfit-bold",
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          onTap: controller.changeTabIndex,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: controller.tabIndex == 0
                    ? SvgPicture.asset("assets/icons/home-2.svg")
                    : SvgPicture.asset("assets/icons/home-1.svg"),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: controller.tabIndex == 1
                    ? SvgPicture.asset("assets/icons/bag-2.svg")
                    : SvgPicture.asset("assets/icons/bag-1.svg"),
              ),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: controller.tabIndex == 2
                    ? SvgPicture.asset("assets/icons/chat-1.svg")
                    : SvgPicture.asset("assets/icons/chat-2.svg"),
              ),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: controller.tabIndex == 3
                    ? SvgPicture.asset("assets/icons/wallet-2.svg")
                    : SvgPicture.asset("assets/icons/wallet-1.svg"),
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: controller.tabIndex == 4
                    ? SvgPicture.asset("assets/icons/user-2.svg")
                    : SvgPicture.asset("assets/icons/user-1.svg"),
              ),
              label: 'Profile',
            ),
          ],
        ),
      );
    });
  }
}
