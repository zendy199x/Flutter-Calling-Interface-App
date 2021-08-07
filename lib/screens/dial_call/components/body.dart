import 'package:calling_interface/components/dial_user_pic.dart';
import 'package:calling_interface/components/rounded_button.dart';
import 'package:calling_interface/constants.dart';
import 'package:calling_interface/screens/dial_call/components/dial_button.dart';
import 'package:calling_interface/size_config.dart';
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
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Text(
              "Zendy",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white),
            ),
            const Text(
              "Calling...",
              style: TextStyle(color: Colors.white60),
            ),
            const VerticalSpacing(),
            const DialUserPic(image: "assets/images/calling_face.jpeg"),
            const Spacer(),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                DialButton(
                  iconSrc: "assets/icons/Icon Mic.svg",
                  text: "Audio",
                  press: () {},
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Volume.svg",
                  text: "Mircrophone",
                  press: () {},
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Video.svg",
                  text: "Video",
                  press: () {},
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Message.svg",
                  text: "Message",
                  press: () {},
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon User.svg",
                  text: "Add Contact",
                  press: () {},
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Voicemail.svg",
                  text: "Voice Mail",
                  press: () {},
                ),
              ],
            ),
            const VerticalSpacing(),
            RoundedButton(
              iconSrc: "assets/icons/call_end.svg",
              color: kRedColor,
              iconColor: Colors.white,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
