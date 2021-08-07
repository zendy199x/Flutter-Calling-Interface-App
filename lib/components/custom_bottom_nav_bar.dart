import 'package:calling_interface/constants.dart';
import 'package:calling_interface/enum.dart';
import 'package:calling_interface/screens/audio_call_width_image/audio_call_with_image_screen.dart';
import 'package:calling_interface/screens/dial_call/dial_call_screen.dart';
import 'package:calling_interface/screens/group_call/group_call_screen.dart';
import 'package:calling_interface/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () => Navigator.pushNamed(
                context,
                HomeScreen.routeName,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.call,
                color: MenuState.voice == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () => Navigator.pushNamed(
                context,
                AudioCallWithImage.routeName,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.call_to_action,
                color: MenuState.dial == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () => Navigator.pushNamed(
                context,
                DialCallScreen.routeName,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.group,
                color: MenuState.group == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () => Navigator.pushNamed(
                context,
                GroupCallScreen.routeName,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
