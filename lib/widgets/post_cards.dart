import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

import 'blue_tick.dart';

class PostCards extends StatelessWidget {
  final String avatarImage;
  final String profileName;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;

  const PostCards({
    super.key,
    required this.avatarImage,
    required this.profileName,
    required this.publishedAt,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
        ],
      ),
    );
  }

  Widget displayText(String likeCount){
    return Text(
      likeCount == "" ? "" : likeCount,
      style: TextStyle(color: Colors.grey[500]),
    );

  }

  Widget footerSection() {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 50,
      child: Row(
        children: [
          Container(
              width: 17,
              height: 17,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.thumb_up,
                color: Colors.white,
                size: 12,
              )),
          Text(
            "10 K",
            style: TextStyle(color: Colors.grey[500]),
          ),
          Container(
            child: Row(
              children: [
               Text("10 K",style: TextStyle(color: Colors.grey[700]),)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget titleSection() {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        postTitle == "" ? " Blank " : postTitle,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }

  Widget imageSection() {
    return Container(
      child: Image.asset(
        postImage,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
        leading: Avatar(avatarImage: avatarImage, displayStatus: false),
        title: Row(
          children: [
            Text(
              profileName,
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              width: 10,
            ),
            showBlueTick ? BlueTick() : SizedBox(),
          ],
        ),
        subtitle: Row(
          children: [
            Text(
              publishedAt == '' ? "Just Now" : publishedAt,
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.public,
              color: Colors.grey[500],
              size: 16,
            )
          ],
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey[500],
            )));
  }
}
