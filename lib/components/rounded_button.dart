import 'package:calling_interface/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    this.size = 64,
    required this.iconSrc,
    required this.color,
    required this.iconColor,
    required this.press,
  }) : super(key: key);

  final double size;
  final String iconSrc;
  final Color color, iconColor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(size),
      height: getProportionateScreenWidth(size),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(
              15 / 64 * size), // Padding depending on size of the button
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        onPressed: press,
        child: SvgPicture.asset(
          iconSrc,
          color: iconColor,
        ),
      ),
    );
  }
}
