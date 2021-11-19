import 'package:facebook_flutter/assets.dart';
import 'package:facebook_flutter/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(displayImage: raj, displayStatus: true),
          Avatar(displayImage: lal, displayStatus: true),
          Avatar(displayImage: mammootty, displayStatus: false),
          Avatar(displayImage: raj, displayStatus: true),
          Avatar(displayImage: dulqur, displayStatus: true),
          Avatar(displayImage: mammootty, displayStatus: true),
          Avatar(displayImage: raj, displayStatus: true),
          Avatar(displayImage: dulqur, displayStatus: true),
          Avatar(displayImage: mammootty, displayStatus: true),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlineButton.icon(
        shape: StadiumBorder(),
        onPressed: () {
          print('create room');
        },
        icon: Icon(
          Icons.video_call_outlined,
          color: Colors.purple,
        ),
        label: Text(
          'Create \n Room',
          style: TextStyle(color: Colors.blue),
        ),
        borderSide: BorderSide(color: Colors.blue[100], width: 2),
      ),
    );
  }
}
