import 'package:calling_interface/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DialButton extends StatelessWidget {
  const DialButton({
    Key? key,
    required this.iconSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String iconSrc, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(120),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(20),
          ),
        ),
        onPressed: press,
        child: Column(
          children: [
            SvgPicture.asset(
              iconSrc,
              color: Colors.white,
              height: 36,
            ),
            const VerticalSpacing(of: 5),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
