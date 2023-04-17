import 'package:flutter/material.dart';
import '../../components/appbar_widget.dart';
import '../widgets/header_text_widget.dart';
import '../widgets/notification_box_widget.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBarWidget(
          backgroundColor: Colors.grey.shade50,
          title: Row(
            children: const [
              Text(
                "Notification",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.black,
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: const [
              HeaderTextWidget(
                title: "Today",
                trailing: SizedBox(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: NorificationBoxWidget(
                  icon: "assets/icons/stroke.svg",
                  title: "Your offer has been accepted!",
                  subtitle:
                      "Congrats! your offer has been \naccepted by the seller for \$170.000",
                  top: 8,
                  height: 35,
                  visible: true,
                ),
              ),
              HeaderTextWidget(
                title: "Yesterday",
                trailing: SizedBox(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: NorificationBoxWidget(
                  icon: "assets/icons/pin.svg",
                  title: "New Service Available",
                  subtitle: "Now you can track orders in real time",
                  top: 16,
                  height: 40,
                  visible: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: NorificationBoxWidget(
                  icon: "assets/icons/stroke.svg",
                  title: "Your offer has been rejected!",
                  subtitle:
                      "We're sorry, your offer has been\nrejected by the seller :(",
                  top: 8,
                  height: 35,
                  visible: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: NorificationBoxWidget(
                  icon: "assets/icons/credit.svg",
                  title: "New Service Available",
                  subtitle: "Now you can track orders in real time",
                  top: 16,
                  height: 30,
                  visible: false,
                ),
              ),
              HeaderTextWidget(
                title: "December 22, 2024",
                trailing: SizedBox(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: NorificationBoxWidget(
                  icon: "assets/icons/user-2.svg",
                  title: "Account Setup Succesfull!",
                  subtitle: "Congrats! account setup succesfull!",
                  top: 8,
                  height: 35,
                  visible: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
