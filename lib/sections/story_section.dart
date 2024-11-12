import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
          StoryCard(),
        ],
      ),
    );
  }
}
