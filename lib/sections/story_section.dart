import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../assets.dart';
import '../widgets/story_card.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Create new Story",
            storyImage: avatar_06,
            avatar: avatar_01,
            createStoryStatus: true,
          ),
          StoryCard(
              labelText: " Story",
              storyImage: posts_01,
              avatar: avatar_02,
              createStoryStatus: false,
              displayBorder: true),
          StoryCard(
              labelText: " Story",
              storyImage: posts_02,
              avatar: avatar_03,
              createStoryStatus: false,
              displayBorder: true),
          StoryCard(
              labelText: " Story",
              storyImage: posts_03,
              avatar: avatar_04,
              createStoryStatus: false,
              displayBorder: true),
          StoryCard(
              labelText: " Story",
              storyImage: posts_04,
              avatar: avatar_05,
              createStoryStatus: false,
              displayBorder: true),
        ],
      ),
    );
  }
}
