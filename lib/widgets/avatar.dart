import 'package:flutter/material.dart';

import '../assets.dart';

class Avatar extends StatelessWidget {
  final String avatarImage;
  final bool displayStatus;

  const Avatar(
      {super.key, required this.avatarImage, required this.displayStatus});

  @override
  Widget build(BuildContext context) {
    Widget statusIndicatior;
    //  status indicator using if else statement
    // if(displayStatus== true){
    //   statusIndicatior = Positioned(
    //     bottom: 0,
    //     right: 2,
    //     child: Container(
    //       padding: EdgeInsets.all(4),
    //       width: 15,
    //       height: 15,
    //       decoration: BoxDecoration(
    //         color: Colors.greenAccent,
    //         shape: BoxShape.circle,
    //         border: Border.all(
    //           color: Colors.white,
    //           width: 2,
    //         ),
    //       ),
    //     ),
    //   );
    // }else{
    // statusIndicatior = SizedBox();
    // }

    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            //clipRRect has no effect
            child: Image.asset(
              avatarImage,
              width: 60,
              height: 60,
            ),
          ),
        ),
        //  status indicator using if else a turnery operator
        displayStatus == true
            ? Positioned(
                bottom: 0,
                right: 2,
                child: Container(
                  padding: EdgeInsets.all(4),
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
