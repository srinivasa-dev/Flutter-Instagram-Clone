import 'package:flutter/material.dart';
import 'package:instagram_clone/app_colors.dart';
import 'package:instagram_clone/bottom_nav_screens/home_tab.dart';
import 'package:instagram_clone/models/profile_model.dart';
import 'package:instagram_clone/widgets/profile_pic.dart';
import 'package:instagram_clone/widgets/searchbar.dart';
import 'package:instagram_clone/bottom_nav_screens/profile_tab.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key key}) : super(key: key);

  @override
  _ScreenThreeState createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {

  onBack(){
    setState(() {
      tabController.index = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBack(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.backgroundColor,
          appBar: AppBar(
            backgroundColor: AppColor.transparent,
            elevation: 0.0,
            leading: GestureDetector(
              onTap: () {
                onBack();
              },
              child: Icon(
                Icons.keyboard_backspace_outlined,
                color: AppColor.iconColor,
                size: 35,
              ),
            ),
            title: GestureDetector(
              onTap: () {
                showAddUserBottomSheet(context);
              },
              child: Row(
                children: [
                  Text(
                    'the_cybernaut_',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 22,
                        color: AppColor.textColor,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColor.iconColor,
                  ),
                ],
              ),
            ),
            centerTitle: false,
            actions: [
              ImageIcon(
                AssetImage('assets/Icons/video_cam.png'),
                color: AppColor.iconColor,
                size: 27.0,
              ),
              SizedBox(width: 22.0,),
              ImageIcon(
                AssetImage('assets/Icons/new_group.png'),
                color: AppColor.iconColor,
                size: 25.0,
              ),
              SizedBox(width: 10.0,),
            ],
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        child: SearchBar(),
                      ),
                      SizedBox(height: 15.0,),
                      Text(
                        'Messages',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: AppColor.textColor,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5
                        ),
                      ),
                    ],
                  ),
                ),
                ...List.generate(profileModel.length, (index) {
                  return InkWell(
                    onTap: () {

                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                      child: Row(
                        children: [
                          CircularProfilePic(
                              profileUrl: profileModel[index].profilePic,
                              height: 50.0,
                              width: 50.0,
                          ),
                          SizedBox(width: 15.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${profileModel[index].firstName} ${profileModel[index].lastName}',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 15,
                                    color: AppColor.textColor,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 0.5
                                ),
                              ),
                              SizedBox(height: 3.0,),
                              RichText(
                                text: TextSpan(
                                  text: 'Hey there 👋',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 13,
                                      color: AppColor.textColorGrey,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.5
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' • 1h ago',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 13,
                                          color: AppColor.textColorGrey,
                                          fontWeight: FontWeight.w300,
                                          letterSpacing: 0.5
                                      ),
                                    ),
                                  ]
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          ImageIcon(
                            AssetImage('assets/Icons/camera.png'),
                            color: AppColor.iconColor,
                            size: 25.0,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
