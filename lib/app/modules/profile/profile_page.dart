import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/modules/profile/profile_controller.dart';
import 'package:flutter_car_marketplace_app/app/modules/profile/widgets/switch.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: const [
            Text(
              "Profile",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/more.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                        "https://i.ibb.co/PGv8ZzG/me.jpg",
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/edit.svg",
                          height: 20,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "JEJE",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 8),
              const Text(
                "+ 111 467 378  399",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Divider(thickness: 1, height: 1),
              ),
              const MyListTileWidget(
                icon: "user-1",
                title: "Edit profile",
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const MyListTileWidget(
                icon: "pin",
                title: "Address",
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const MyListTileWidget(
                icon: "bell",
                title: "Notifications",
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const MyListTileWidget(
                icon: "wallet-1",
                title: "Wallet",
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const MyListTileWidget(
                icon: "check-shield",
                title: "Security",
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const MyListTileWidget(
                icon: "check",
                title: "Language",
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const MyListTileWidget(
                icon: "view",
                title: "Dark Mode",
                trailing: MySwitch(),
              ),
              const MyListTileWidget(
                icon: "lock",
                title: "Privacy Policy",
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const MyListTileWidget(
                icon: "info",
                title: "Help Center",
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const MyListTileWidget(
                icon: "info",
                title: "Help Center",
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const MyListTileWidget(
                icon: "use-add",
                title: "Invite Friends",
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyListTileWidget extends StatelessWidget {
  const MyListTileWidget({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
  });
  final String icon;
  final String title;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: SvgPicture.asset("assets/icons/$icon.svg"),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
        trailing: trailing);
  }
}
