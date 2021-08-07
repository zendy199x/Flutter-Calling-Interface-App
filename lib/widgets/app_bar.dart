import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/Icon Back.svg"),
      onPressed: () => Navigator.pop(context),
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
