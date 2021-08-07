import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'user_calling_card.dart';

// Demo Data

List<Map<String, dynamic>> demoData = [
  {
    "isCalling": false,
    "name": "User 1",
    "image": "assets/images/group_call_face_1.png",
  },
  {
    "isCalling": true,
    "name": "Zendy",
    "image": "assets/images/group_call_face_small.jpeg",
  },
  {
    "isCalling": false,
    "name": "User 1",
    "image": "assets/images/group_call_face_2.png",
  },
  {
    "isCalling": false,
    "name": "User 1",
    "image": "assets/images/group_call_face_3.png",
  },
];

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      itemCount: demoData.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.53,
        crossAxisCount: 2,
        // mainAxisSpacing: 20,
        // crossAxisSpacing: 20,
      ),
      itemBuilder: (context, index) => demoData[index]["isCalling"]
          ? UserCallingCard(
              name: demoData[index]["name"], image: demoData[index]["image"])
          : Image.asset(
              demoData[index]["image"],
              fit: BoxFit.cover,
            ),
    );
  }
}
