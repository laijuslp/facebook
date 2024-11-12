import 'package:flutter/material.dart';

import '../assets.dart';
import '../widgets/avatar.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar( avatarImage: avatarBoy, displayStatus: true),
          Avatar( avatarImage: avatar_01, displayStatus: true),
          Avatar( avatarImage: avatar_02, displayStatus: true),
          Avatar( avatarImage: avatar_03, displayStatus: true),
          Avatar( avatarImage: avatar_04, displayStatus: true),
          Avatar( avatarImage: avatar_05, displayStatus: true),
          Avatar( avatarImage: avatar_06, displayStatus: true),
          Avatar( avatarImage: avatar_07, displayStatus: true),
          Avatar( avatarImage: avatar_08, displayStatus: true),
          Avatar( avatarImage: avatar_09, displayStatus: true),
          Avatar( avatarImage: avatar_10, displayStatus: true),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(right: 5,left: 5),
      child: OutlinedButton.icon(
        onPressed: () {
          // Define the action when the button is pressed
        },
        icon: const Icon(
          Icons.video_call,
          color: Colors.purpleAccent,
        ),
        // The icon displayed on the button
        label: const Text(
          "Create \nRoom",
          style: TextStyle(color: Colors.blue),
        ),
        // The text displayed on the button
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
              color: Colors.blue, width: 2), // Customize the border color
          // Customize the text/icon color
        ),
      ),
    );
  }
}
