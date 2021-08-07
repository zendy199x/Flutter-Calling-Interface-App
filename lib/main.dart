import 'package:calling_interface/screens/audio_call_width_image/audio_call_with_image_screen.dart';
import 'package:calling_interface/screens/dial_call/dial_call_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DialCallScreen(),
    );
  }
}
