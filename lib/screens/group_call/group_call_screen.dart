import 'package:calling_interface/components/rounded_button.dart';
import 'package:calling_interface/constants.dart';
import 'package:calling_interface/screens/group_call/components/body.dart';
import 'package:calling_interface/size_config.dart';
import 'package:calling_interface/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class GroupCallScreen extends StatelessWidget {
  const GroupCallScreen({Key? key}) : super(key: key);

  static String routeName = "group_call";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: Container(
        color: kBackgoundColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedButton(
                  color: kRedColor,
                  iconColor: Colors.white,
                  size: 48,
                  iconSrc: "assets/icons/Icon Close.svg",
                  press: () {},
                ),
                RoundedButton(
                  color: const Color(0xFF2C384D),
                  iconColor: Colors.white,
                  size: 48,
                  iconSrc: "assets/icons/Icon Volume.svg",
                  press: () {},
                ),
                RoundedButton(
                  color: const Color(0xFF2C384D),
                  iconColor: Colors.white,
                  size: 48,
                  iconSrc: "assets/icons/Icon Mic.svg",
                  press: () {},
                ),
                RoundedButton(
                  color: const Color(0xFF2C384D),
                  iconColor: Colors.white,
                  size: 48,
                  iconSrc: "assets/icons/Icon Video.svg",
                  press: () {},
                ),
                RoundedButton(
                  color: const Color(0xFF2C384D),
                  iconColor: Colors.white,
                  size: 48,
                  iconSrc: "assets/icons/Icon Repeat.svg",
                  press: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
