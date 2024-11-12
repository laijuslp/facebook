import 'package:flutter/material.dart';

import '../assets.dart';
import 'circular_button.dart';

class StoryCard extends StatelessWidget {
  final String labelString;
  final String story;
  final String avatar;

  const StoryCard({super.key, required this.labelString, required this.story, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(avatar_01), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            // custom widget
            child: CircularButton(
              buttonIcon: Icons.add,
              iconColor: Colors.blue,
              buttonAction: () {
                print("Create new story");
              },
            ),
          ),
          const Positioned(
              left: 10,
              bottom: 10,
              child: Text(
                "Add to Story",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ))
        ],
      ),
    );
  }
}
