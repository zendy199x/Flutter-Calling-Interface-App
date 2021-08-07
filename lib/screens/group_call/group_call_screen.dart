import 'package:calling_interface/components/rounded_button.dart';
import 'package:calling_interface/constants.dart';
import 'package:calling_interface/screens/group_call/components/body.dart';
import 'package:calling_interface/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GroupCallScreen extends StatelessWidget {
  const GroupCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
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

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/Icon Back.svg"),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/Icon User.svg",
            height: 24,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
