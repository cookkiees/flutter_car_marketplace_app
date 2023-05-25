import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/modules/components/rating_builder_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/appbar_widget.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AppBarWidget(
          title: Row(
            children: [
              Text(
                " 5.0 (86 reviews)",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: Column(
              children: [
                const RatingBuilderWidget(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1.2,
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: false,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    clipBehavior: Clip.antiAlias,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: ProfileReviewsDetailsWidget(),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileReviewsDetailsWidget extends StatelessWidget {
  const ProfileReviewsDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              radius: 28.0,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
            ),
            const SizedBox(width: 12),
            const Text(
              "Darlene Robertson",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 80),
            Container(
              height: 30,
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.black, width: 1.5),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/star.svg",
                    height: 18,
                    colorFilter: const ColorFilter.mode(
                      Colors.black,
                      BlendMode.srcIn,
                    ),
                  ),
                  const Text(
                    "5",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            SvgPicture.asset("assets/icons/more.svg")
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          "The car is awesome and very fast, my family and I really like it, wow !!",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            SvgPicture.asset("assets/icons/favorite-2.svg"),
            const Padding(
              padding: EdgeInsets.only(left: 8.0, right: 16),
              child: Text(
                "729",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Text(
              "6 days ago",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        )
      ],
    );
  }
}
