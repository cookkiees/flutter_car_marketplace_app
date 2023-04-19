import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../home/widgets/header_text_widget.dart';

class DescriptionDetailsWidget extends StatelessWidget {
  const DescriptionDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: HeaderTextWidget(
            title: "Description",
            trailing: SizedBox(),
          ),
        ),
        ReadMoreText(
          'cars produced by General Motors under the Chevrolet brand. This car is classified as a pony car[1][2] and some versions are categorized as a muscle car.[3][4] This car was first sold on September 29, 1967. It was designed to compete with the Ford Mustang. This car uses the same platform and some components as the Pontiac Firebird.',
          trimLines: 3,
          colorClickableText: Colors.pink,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          style: TextStyle(fontSize: 16),
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
