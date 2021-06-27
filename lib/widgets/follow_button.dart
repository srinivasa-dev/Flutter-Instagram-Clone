import 'package:flutter/material.dart';

import '../app_colors.dart';

class FollowButton extends StatelessWidget {
  final double height;
  final double width;
  const FollowButton({Key key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: () {

        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColor.buttonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.0),
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
        ),
        child: Text(
          'Follow',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 13,
            color: AppColor.textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
