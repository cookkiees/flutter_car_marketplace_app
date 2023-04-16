import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_controller.dart';

class SpecialOffersSCarouselSliderWidget extends GetView<HomeController> {
  const SpecialOffersSCarouselSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        aspectRatio: 16 / 9,
        viewportFraction: 0.9,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.easeInOut,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {
          controller.onIndexChanged(index);
        },
        scrollDirection: Axis.horizontal,
      ),
      items: controller.image.map(
        (image) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "20 %",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Weak deals!",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            "Get a new car discount,\nonly valid this week",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 30,
                      child: Image.asset(
                        image,
                        height: 110,
                      ),
                    ),
                    Positioned(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.grey,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            minimumSize: const Size(400, 200)),
                        onPressed: () {},
                        child: null,
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
      ).toList(),
    );
  }
}
