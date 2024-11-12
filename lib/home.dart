import 'package:facebook/assets.dart';
import 'package:facebook/sections/header_button_section.dart';
import 'package:facebook/sections/room_section.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/story_section.dart';
import 'package:facebook/widgets/circular_button.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/divider_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});


  @override
  Widget build(BuildContext context) {

    Widget thickDivider(){
      return Divider(thickness: 10,color: Colors.grey[300],);
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print("Search button");
                }, iconColor: Colors.black,),
            CircularButton(
                buttonIcon: Icons.message,
                buttonAction: () {
                  print("message button");
                }, iconColor:  Colors.black,),

            // this is the code and this container is refactored above .see appBarButton.dart
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.circle,
              ),
              child: TextButton(
                onPressed: () {
                  print("Message icon pressed");
                },
                child: const Icon(
                  Icons.mail,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            const StatusSection(),
            const DividerWidget(),
            const HeaderButtonSection(),
            thickDivider(),
            RoomSection(),
            thickDivider(),
            StorySection(),
            thickDivider(),
          ],
        ),
      ),
    );
  }
}
