import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;

  const CircularButton(
      {super.key, required this.buttonIcon, required this.buttonAction, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: TextButton(
          onPressed: buttonAction,
          child: Icon(
            buttonIcon,
            color: iconColor,
            size: 25,
          )),
    );
  }
}
