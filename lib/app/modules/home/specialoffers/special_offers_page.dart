import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/appbar_widget.dart';
import '../home_controller.dart';
import '../widgets/spesial_offers_carouselslider_widget.dart';

class SpecialOffersPage extends GetView<HomeController> {
  const SpecialOffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBarWidget(
          backgroundColor: Colors.grey.shade50,
          title: const Row(
            children: [
              Text(
                "Special Offers",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [
              SpecialOffersSCarouselSliderWidget(
                initilaPage: 0,
                autoPlay: false,
              ),
              SizedBox(height: 8),
              SpecialOffersSCarouselSliderWidget(
                initilaPage: 1,
                autoPlay: false,
              ),
              SizedBox(height: 8),
              SpecialOffersSCarouselSliderWidget(
                initilaPage: 2,
                autoPlay: false,
              ),
              SizedBox(height: 8),
              SpecialOffersSCarouselSliderWidget(
                initilaPage: 3,
                autoPlay: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
