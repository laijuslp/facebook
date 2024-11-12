import 'package:flutter/material.dart';

import '../assets.dart';
import '../widgets/avatar.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(avatarImage:avatarBoy, displayStatus: false, ),
      title: const TextField(
        decoration: InputDecoration(
          hintText: "Whats on your mind",
          hintStyle:TextStyle(
          color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ) ,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),

        ),

    );
  }
}
