import 'package:calling_interface/screens/audio_call_width_image/components/body.dart';
import 'package:calling_interface/size_config.dart';
import 'package:flutter/material.dart';

class AudioCallWithImage extends StatelessWidget {
  const AudioCallWithImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It help us to make our UI responsive
    SizeConfig().init(context);

    return const Scaffold(
      body: Body(),
    );
  }
}
