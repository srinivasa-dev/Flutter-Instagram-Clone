import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app_colors.dart';
import 'package:instagram_clone/models/activity_model.dart';
import 'package:instagram_clone/widgets/follow_button.dart';
import 'package:instagram_clone/widgets/profile_pic.dart';

class ActivityTab extends StatefulWidget {
  const ActivityTab({Key key}) : super(key: key);

  @override
  _ActivityTabState createState() => _ActivityTabState();
}

class _ActivityTabState extends State<ActivityTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Activity',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 25,
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text(
                        'This Month',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          color: AppColor.textColor,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.6
                        ),
                      ),
                      SizedBox(height: 15,),
                      buildListMonth(),
                      Text(
                        'This Week',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            color: AppColor.textColor,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.6
                        ),
                      ),
                      SizedBox(height: 15,),
                      buildListWeek(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column buildListWeek() {
    return Column(
      children: List.generate(activityModel.thisWeek.length, (index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircularProfilePic(
                profileUrl: activityModel.thisWeek[index].profilePic,
                height: 45,
                width: 45,
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: activityModel.thisWeek[index].username,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            color: AppColor.textColor,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.6,
                          ),
                          children: [
                            TextSpan(
                              text: ' ${activityModel.thisWeek[index].wording}  ',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                color: AppColor.textColor,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 0.6,
                              ),
                            ),
                            TextSpan(
                              text: activityModel.thisWeek[index].days,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                color: AppColor.textColorGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ]
                      ),
                    ),
                    Visibility(
                      visible: activityModel.thisWeek[index].isComment,
                      child: Column(
                        children: [
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              ImageIcon(
                                AssetImage('assets/Icons/heart_fill.png'),
                                size: 10,
                                color: AppColor.heart,
                              ),
                              SizedBox(width: 25,),
                              Text(
                                'Reply',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                  color: AppColor.textColorGrey,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.6,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              activityModel.thisWeek[index].isFollow ? FollowButton(
                height: 28.0,
                width: 70.0,
              ) : SizedBox(
                height: 45.0,
                width: 45.0,
                child: CachedNetworkImage(
                  imageUrl: activityModel.thisWeek[index].yourPost,
                  placeholder: (context, url,) {
                    return Container(
                      height: 45.0,
                      width: 45.0,
                      color: AppColor.shimmerBaseColor,
                    );
                  },
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        );
      }),
    );
  }

  Column buildListMonth() {
    return Column(
      children: List.generate(activityModel.thisMonth.length, (index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircularProfilePic(
                profileUrl: activityModel.thisMonth[index].profilePic,
                height: 45,
                width: 45,
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: activityModel.thisMonth[index].username,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: AppColor.textColor,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.6,
                        ),
                        children: [
                          TextSpan(
                            text: ' ${activityModel.thisMonth[index].wording}  ',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: AppColor.textColor,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 0.6,
                            ),
                          ),
                          TextSpan(
                            text: activityModel.thisMonth[index].days,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: AppColor.textColorGrey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]
                      ),
                    ),
                    Visibility(
                      visible: activityModel.thisMonth[index].isComment,
                      child: Column(
                        children: [
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              ImageIcon(
                                AssetImage('assets/Icons/heart_fill.png'),
                                size: 10,
                                color: AppColor.heart,
                              ),
                              SizedBox(width: 25,),
                              Text(
                                'Reply',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                  color: AppColor.textColorGrey,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.6,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              activityModel.thisMonth[index].isFollow ? SizedBox(
                height: 28,
                width: 70,
                child: TextButton(
                  onPressed: () {

                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColor.buttonColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
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
              ) : SizedBox(
                height: 45.0,
                width: 45.0,
                child: CachedNetworkImage(
                  imageUrl: activityModel.thisMonth[index].yourPost,
                  placeholder: (context, url,) {
                    return Container(
                      height: 45.0,
                      width: 45.0,
                      color: AppColor.shimmerBaseColor,
                    );
                  },
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
