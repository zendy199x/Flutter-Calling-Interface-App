import 'package:calling_interface/screens/audio_call_width_image/audio_call_with_image_screen.dart';
import 'package:calling_interface/screens/dial_call/dial_call_screen.dart';
import 'package:calling_interface/screens/group_call/group_call_screen.dart';
import 'package:calling_interface/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  AudioCallWithImage.routeName: (context) => const AudioCallWithImage(),
  DialCallScreen.routeName: (context) => const DialCallScreen(),
  GroupCallScreen.routeName: (context) => const GroupCallScreen(),
};
