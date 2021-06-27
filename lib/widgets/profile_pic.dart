import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../app_colors.dart';

class CircularProfilePic extends StatefulWidget {
  String profileUrl;
  double height;
  double width;
  CircularProfilePic({Key key, @required this.profileUrl, @required this.height, @required this.width}) : super(key: key);

  @override
  _CircularProfilePicState createState() => _CircularProfilePicState();
}

class _CircularProfilePicState extends State<CircularProfilePic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: CachedNetworkImage(
          imageUrl: widget.profileUrl,
          placeholder: (context, url,) {
            return Shimmer.fromColors(
              child: Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: AppColor.storyBorder
                ),
              ),
              baseColor: AppColor.shimmerBaseColor,
              highlightColor: AppColor.shimmerHighlightColor,
              period: Duration(seconds: 1),
            );
          },
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
