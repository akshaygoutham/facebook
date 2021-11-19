import 'package:facebook_flutter/assets.dart';
import 'package:facebook_flutter/widgets/avatar.dart';
import 'package:facebook_flutter/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String Story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;

  StoryCard({
    @required this.labelText,
    @required this.Story,
    @required this.avatar,
    this.createStoryStatus = false,
    this.displayBorder=false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child:createStoryStatus ? CircularButton(
                buttonIcon: Icons.add,
                iconColor: Colors.blue,
                buttonAction: () {
                  print("add stories");
                }
                )
                :Avatar(
              displayImage: avatar,
              displayStatus: false,
              diaplayBorder: displayBorder,
            ),
          ),
          Positioned(
            bottom: 5,
            left: 10,
            child: Text(
              labelText !=null ? labelText:"N/A",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
