import 'package:facebook_flutter/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook_flutter/widgets/storyCard.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:  [
          StoryCard(
            labelText: "add to story",
            avatar: raj,
            Story: raj,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Mohanlal",
            avatar: lal,
            Story: lucifier,
          ),
          StoryCard(
            labelText: "Mammootty",
            avatar: mammootty,
            Story: kasaba,
          ),
          StoryCard(
            labelText: "DQ",
            avatar: dulqur,
            Story: christmas,
          ),
        ],
      ),
    );
  }
}
