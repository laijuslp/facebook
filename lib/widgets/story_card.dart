import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

import 'avatar.dart';
import 'circular_button.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String storyImage;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder; // this is not a required parameter

  const StoryCard(
      {super.key,
      required this.labelText,
      required this.storyImage,
      required this.avatar,
      this.createStoryStatus = false,
      this.displayBorder = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          image: createStoryStatus
              ? DecorationImage(image: AssetImage(avatar), fit: BoxFit.cover)
              : DecorationImage(
                  image: AssetImage(storyImage), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            // custom widget
            child: createStoryStatus
                ? CircularButton(
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                    buttonAction: () {
                      print("Create new story");
                    },
                  )
                : Avatar(
                    avatarImage: avatar,
                    displayStatus: false,
                    displayBorder: displayBorder),
          ),
          Positioned(
              left: 10,
              bottom: 10,
              child: Text(
                createStoryStatus ? "Create new Story" : labelText,
                style: const TextStyle(
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
