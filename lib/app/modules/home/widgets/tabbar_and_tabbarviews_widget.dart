import 'package:flutter/material.dart';

import '../tabviews/tab_views_all_widget.dart';
import '../tabviews/tab_views_mercedes_widget.dart';
import 'tab_menu_item_widget.dart';

class TabbarAndTabbarViewsWidget extends StatelessWidget {
  const TabbarAndTabbarViewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Column(
        children: <Widget>[
          TabBar(
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              return states.contains(MaterialState.focused)
                  ? null
                  : Colors.transparent;
            }),
            isScrollable: true,
            splashFactory: NoSplash.splashFactory,
            labelStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            unselectedLabelColor: Colors.black,
            labelColor: Colors.white,
            dividerColor: Colors.black,
            labelPadding: const EdgeInsets.symmetric(horizontal: 8),
            indicatorPadding:
                const EdgeInsets.only(left: 8, bottom: 1, right: 8),
            indicator: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.grey.shade100),
              color: Colors.black,
              borderRadius: const BorderRadius.all(
                Radius.circular(24),
              ),
            ),
            tabs: const [
              TabMenuItemWidget(text: "All", width: 70),
              TabMenuItemWidget(text: "Mercedes", width: 100),
              TabMenuItemWidget(text: "Tesla", width: 80),
              TabMenuItemWidget(text: "BMW", width: 80),
              TabMenuItemWidget(text: "Volvo", width: 80),
              TabMenuItemWidget(text: "Bugatti", width: 90),
              TabMenuItemWidget(text: "Honda", width: 80),
              TabMenuItemWidget(text: "Audi", width: 70),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.2,
              child: const TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  TabViewsAllWidget(),
                  TabViewsMercedesWidget(),
                  Center(child: Text("Tesla")),
                  Center(child: Text("BMW")),
                  Center(child: Text("Volvo")),
                  Center(child: Text("Bugatti")),
                  Center(child: Text("Honda")),
                  Center(child: Text("Audi")),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
