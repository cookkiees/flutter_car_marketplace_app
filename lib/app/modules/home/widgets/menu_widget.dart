import 'package:flutter/material.dart';

import 'menu_item_widget.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 24,
      runSpacing: 24,
      children: [
        MenuItemWidget(
          onPressed: () {},
          title: "Mercedes",
          logo: "mercedes",
          height: 53,
          top: 16,
          left: 1,
          color: Colors.black,
          padding: const EdgeInsets.only(left: 8, top: 6),
        ),
        MenuItemWidget(
          onPressed: () {},
          title: "Tesla",
          logo: "tesla",
          height: 40,
          top: 22,
          left: 21,
          padding: const EdgeInsets.all(20),
        ),
        MenuItemWidget(
          onPressed: () {},
          title: "BMW",
          logo: "bmw",
          height: 50,
          top: 15,
          left: 15,
          padding: const EdgeInsets.all(20),
        ),
        MenuItemWidget(
          onPressed: () {},
          title: "Toyota",
          logo: "toyota",
          height: 35,
          top: 22,
          left: 13,
          padding: const EdgeInsets.all(20),
        ),
        MenuItemWidget(
          onPressed: () {},
          title: "Volvo",
          logo: "volvo",
          height: 10,
          top: 32,
          left: 5,
          padding: const EdgeInsets.all(20),
        ),
        MenuItemWidget(
          onPressed: () {},
          title: "Bugatti",
          logo: "bugatti",
          height: 60,
          top: 10,
          color: Colors.black,
          padding: const EdgeInsets.all(20),
        ),
        MenuItemWidget(
          onPressed: () {},
          title: "Honda",
          logo: "honda",
          height: 40,
          top: 20,
          left: 8,
          color: Colors.black,
          padding: const EdgeInsets.all(20),
        ),
        MenuItemWidget(
          onPressed: () {},
          title: "Audi",
          logo: "audi",
          height: 40,
          top: 20,
          left: 5,
          color: Colors.black,
          padding: const EdgeInsets.all(20),
        ),
      ],
    );
  }
}
