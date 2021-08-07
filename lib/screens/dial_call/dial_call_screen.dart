import 'package:calling_interface/constants.dart';
import 'package:calling_interface/screens/dial_call/components/body.dart';
import 'package:calling_interface/size_config.dart';
import 'package:calling_interface/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class DialCallScreen extends StatelessWidget {
  const DialCallScreen({Key? key}) : super(key: key);

  static String routeName = "dial_call";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context),
      backgroundColor: kBackgoundColor,
      body: const Body(),
    );
  }
}
