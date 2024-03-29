import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
    @required String buttonText,
    @required IconData buttonIcon,
    @required void Function() buttonAction,
    @required Color buttonColor,
  }) {
    return FlatButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(buttonText),
    );
  }
  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
              buttonText: "Live",
              buttonIcon: Icons.video_call,
              buttonAction: () {
                print("Go Live");
              },
              buttonColor: Colors.red ),
          verticalDivider,
          headerButton(
              buttonText: "Photos",
              buttonIcon: Icons.photo_library,
              buttonAction: () {
                print("Go Live");
              },
              buttonColor: Colors.green ),
        verticalDivider,
          headerButton(
              buttonText: "Short video",
              buttonIcon: Icons.video_collection_outlined,
              buttonAction: () {
                print("create room");
              },
              buttonColor: Colors.blue ),
        ],
      ),
    );
  }
}
