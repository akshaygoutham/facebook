
import 'package:facebook_flutter/assets.dart';
import 'package:facebook_flutter/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: raj,
        displayStatus: false,),
      title:TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          hintStyle: TextStyle(
            color: Colors.black
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
        ),
      ) ,
    );
  }
}
