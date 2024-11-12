import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  const HeaderButtonSection({super.key});

// function
  Widget headerButton(
      {required void Function() buttonAction,
      required String buttonText,
      required IconData buttonIcon,
      required Color buttonColor}) {
    return TextButton.icon(
      onPressed: buttonAction,
      label: Text(buttonText),
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),

    );
  }

// function end

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // text button without function call or  hard coded or  actual code
          // TextButton.icon(
          //   onPressed: () {
          //     print("Live button clicked");
          //   },
          //   label: const Text("Live"),
          //   icon: const Icon(
          //     Icons.video_call,
          //     color: Colors.red,
          //   ),
          // ),

          // VerticalDivider(
          //   thickness: 1,
          //   color: Colors.grey[300],
          // ),

          // function call for text button with parameters or refactoring of TextButton()
          headerButton(
            buttonAction: () {
              print("Live Button selected ");
            },
            buttonText: "Live",
            buttonIcon: Icons.video_call,
            buttonColor: Colors.red,
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),

          headerButton(
            buttonAction: () {
              print("Photo Button selected ");
            },
            buttonText: "Photo",
            buttonIcon: Icons.photo_library,
            buttonColor: Colors.green,
          ),

          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),

          headerButton(
            buttonAction: () {
              print("Room Button selected ");
            },
            buttonText: "Room",
            buttonIcon: Icons.video_call,
            buttonColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
