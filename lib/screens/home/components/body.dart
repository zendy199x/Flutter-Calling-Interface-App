import 'package:calling_interface/constants.dart';
import 'package:calling_interface/screens/audio_call_width_image/audio_call_with_image_screen.dart';
import 'package:calling_interface/screens/dial_call/dial_call_screen.dart';
import 'package:calling_interface/screens/group_call/group_call_screen.dart';
import 'package:calling_interface/screens/home/components/home_menu.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ...buildHeader(),
          ...buildHomeMenu(context),
        ],
      ),
    );
  }
}

List<Widget> buildHeader() => [
      Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/zalo_logo.png",
                  height: 25,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar.jpeg"),
                ),
              ],
            ),
            const Text(
              "Menu Screen",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const Text(
              "Welcome to Calling Interface",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      )
    ];

List<Widget> buildHomeMenu(BuildContext context) => [
      HomeMenu(
        text: "Audio Call Image Scrren",
        icon: const Icon(
          Icons.call,
          color: kPrimaryColor,
        ),
        press: () => Navigator.pushNamed(
          context,
          AudioCallWithImage.routeName,
        ),
      ),
      HomeMenu(
        text: "Dial Call Scrren",
        icon: const Icon(
          Icons.call_to_action,
          color: kPrimaryColor,
        ),
        press: () => Navigator.pushNamed(
          context,
          DialCallScreen.routeName,
        ),
      ),
      HomeMenu(
        text: "Group Call Scrren",
        icon: const Icon(
          Icons.group,
          color: kPrimaryColor,
        ),
        press: () => Navigator.pushNamed(
          context,
          GroupCallScreen.routeName,
        ),
      ),
    ];
