import 'package:flutter/material.dart';
import 'package:flutter_car_marketplace_app/app/modules/components/default_textformfield_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/appbar_widget.dart';
import 'widgets/box_chat_widget.dart';

class RoomChatPage extends StatelessWidget {
  const RoomChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBarWidget(
          title: Row(
            children: [
              const Text(
                "Chevrolet Store",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              SvgPicture.asset(
                "assets/icons/icon-verified.svg",
                height: 20,
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/phone.svg"),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/more.svg"),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(6)),
                  child: const Text("Today"),
                ),
              ),
              const SizedBox(height: 16),
              const BoxChatWidget(
                aligment: Alignment.topRight,
                color: Colors.black,
                text:
                    "Hi Good morning, i want to \nbuy chevrolet camaro sports ",
                time: "9:41",
                textColor: Colors.white,
                inAligment: Alignment.centerLeft,
                topLeft: Radius.circular(16),
                topRight: Radius.circular(0),
                textAlignText: TextAlign.left,
                textAlignTime: TextAlign.right,
              ),
              const SizedBox(height: 16),
              const BoxChatWidget(
                aligment: Alignment.topRight,
                color: Colors.black,
                text:
                    "Can i make an offer to the price? \ni think the current price is to high",
                time: "9:41",
                textColor: Colors.white,
                inAligment: Alignment.centerLeft,
                topLeft: Radius.circular(16),
                topRight: Radius.circular(0),
                textAlignText: TextAlign.left,
              ),
              const SizedBox(height: 16),
              BoxChatWidget(
                aligment: Alignment.topLeft,
                color: Colors.grey.shade300,
                text: "Hello Good moring",
                time: "9:41",
                textColor: Colors.black,
                inAligment: Alignment.centerLeft,
                topLeft: const Radius.circular(0),
                topRight: const Radius.circular(16),
                textAlignText: TextAlign.left,
                textAlignTime: TextAlign.right,
              ),
              const SizedBox(height: 16),
              BoxChatWidget(
                aligment: Alignment.topLeft,
                color: Colors.grey.shade300,
                text:
                    "Of course u can, please make an offer.if the price is still suitable, the we will acccept it",
                time: "9:41",
                textColor: Colors.black,
                inAligment: Alignment.centerLeft,
                topLeft: const Radius.circular(0),
                topRight: const Radius.circular(16),
                textAlignText: TextAlign.left,
                textAlignTime: TextAlign.right,
              ),
              const SizedBox(height: 16),
              const BoxChatWidget(
                aligment: Alignment.topRight,
                color: Colors.black,
                text: "Thank u! i will make an offer \nright now",
                time: "9:42",
                textColor: Colors.white,
                inAligment: Alignment.centerLeft,
                topLeft: Radius.circular(16),
                topRight: Radius.circular(0),
                textAlignText: TextAlign.left,
                textAlignTime: TextAlign.right,
              ),
              const SizedBox(height: 16),
              BoxChatWidget(
                aligment: Alignment.topLeft,
                color: Colors.grey.shade300,
                text: "Of course u can,  we will be \nwaiting for your offer",
                time: "9:42",
                textColor: Colors.black,
                inAligment: Alignment.centerLeft,
                topLeft: const Radius.circular(0),
                topRight: const Radius.circular(16),
                textAlignText: TextAlign.left,
                textAlignTime: TextAlign.right,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: SizedBox(
        height: 100,
        width: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 320,
                child: DefaultTextFormFieldWidget(
                  obscureText: false,
                  icons: "assets/icons/Img.svg",
                  hintText: "Message",
                ),
              ),
              const SizedBox(width: 16),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black,
                child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/icons/mic.svg",
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
