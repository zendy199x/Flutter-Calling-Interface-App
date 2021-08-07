import 'package:calling_interface/size_config.dart';
import 'package:flutter/material.dart';

class DialUserPic extends StatelessWidget {
  const DialUserPic({
    Key? key,
    this.size = 192,
    required this.image,
  }) : super(key: key);

  final double size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30 / 192 * size), // Padding depends on size
      width: getProportionateScreenWidth(size),
      height: getProportionateScreenWidth(size),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.white.withOpacity(0.02),
            Colors.white.withOpacity(0.05),
          ],
          stops: const [0.5, 1],
        ),
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
    );
  }
}
