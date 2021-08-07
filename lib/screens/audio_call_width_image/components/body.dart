import 'package:calling_interface/constants.dart';
import 'package:calling_interface/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // Image
        Image.asset(
          "assets/images/full_image.jpeg",
          fit: BoxFit.cover,
        ),
        // Black Layer
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Zendy\nDuc Nguyen",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white),
                ),
                const VerticalSpacing(of: 10),
                Text(
                  "Incomming 00:01".toUpperCase(),
                  style: const TextStyle(color: Colors.white60),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RoundedButton(
                      iconSrc: "assets/icons/Icon Mic.svg",
                      color: Colors.white,
                      iconColor: Colors.black,
                      press: () {},
                    ),
                    RoundedButton(
                      iconSrc: "assets/icons/call_end.svg",
                      color: kRedColor,
                      iconColor: Colors.white,
                      press: () {},
                    ),
                    RoundedButton(
                      iconSrc: "assets/icons/Icon Volume.svg",
                      color: Colors.white,
                      iconColor: Colors.black,
                      press: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

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
