import 'package:calling_interface/constants.dart';
import 'package:calling_interface/screens/dial_call/components/body.dart';
import 'package:calling_interface/size_config.dart';
import 'package:flutter/material.dart';

class DialCallScreen extends StatelessWidget {
  const DialCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return const Scaffold(
      backgroundColor: kBackgoundColor,
      body: Body(),
    );
  }
}
