import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app_colors.dart';
import 'package:instagram_clone/models/profile_model.dart';
import 'package:instagram_clone/other_screens/settings.dart';
import 'package:instagram_clone/widgets/follow_button.dart';
import 'package:instagram_clone/widgets/profile_pic.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key key}) : super(key: key);

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {

  bool _showDiscovery = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      showAddUserBottomSheet(context);
                    },
                    child: Row(
                      children: [
                        Text(
                          'the_cybernaut_',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 23,
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
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      showAddBottomSheet();
                    },
                    child: ImageIcon(
                      AssetImage('assets/Icons/upload.png'),
                      color: AppColor.iconColor,
                      size: 25.0,
                    ),
                  ),
                  SizedBox(width: 30.0,),
                  GestureDetector(
                    onTap: () {
                      showMenuBottomSheet();
                    },
                    child: ImageIcon(
                      AssetImage('assets/Icons/menu.png'),
                      color: AppColor.iconColor,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ),
            NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (OverscrollIndicatorNotification overscroll) {
                overscroll.disallowGlow();
                return;
              },
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircularProfilePic(
                                      profileUrl: 'https://lh3.googleusercontent.com/pw/ACtC-3fRELU5qnGtEsh9YhhyY9qbuz-SSieRCbo97YwkCpmRIgiGNKyuSdxkwINkqja-kKGfo2fn0nm16wVMj5jywoD35sZeb1P5Jz5gmpFXpUo5LcwZvfusad8pL7bDi_hZbooLNhOUZOPcfTyCeJ7yV5OutQ=s990-no',
                                      width: 85.0,
                                      height: 85.0,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '147',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 18,
                                            color: AppColor.textColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(height: 2.0,),
                                        Text(
                                          'Posts',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 14,
                                            color: AppColor.textColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '382',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 18,
                                            color: AppColor.textColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(height: 2.0,),
                                        Text(
                                          'Followers',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 14,
                                            color: AppColor.textColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '506',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 18,
                                            color: AppColor.textColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(height: 2.0,),
                                        Text(
                                          'Following',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 14,
                                            color: AppColor.textColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 0.0,)
                                  ],
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  'Srinivasa Yadav',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      color: AppColor.textColor,
                                      fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 3.0,),
                                GestureDetector(
                                  onTap: () async {
                                    await canLaunch('https://msha.ke/the_cybernaut/#know-more-about-me')
                                        ? await launch('https://msha.ke/the_cybernaut/#know-more-about-me')
                                        : throw 'Could not launch https://msha.ke/the_cybernaut/#know-more-about-me';
                                  },
                                  child: Text(
                                    'msha.ke/the_cybernaut',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(175, 206, 227, 1),
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.4
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15.0,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all<Color>(AppColor.transparent),
                                            shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.0),
                                              side: BorderSide(color: AppColor.divider, width: 1.0),
                                            )),
                                          ),
                                          child: Text(
                                            'Edit Profile',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: AppColor.textColor,
                                                letterSpacing: 0.4
                                            ),
                                          )
                                      ),
                                    ),
                                    SizedBox(width: 10.0,),
                                    SizedBox(
                                      width: 40.0,
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            _showDiscovery = !_showDiscovery;
                                          });
                                        },
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all<Color>(AppColor.transparent),
                                          shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4.0),
                                            side: BorderSide(color: AppColor.divider, width: 1.0),
                                          )),
                                        ),
                                        child: Icon(
                                          Icons.keyboard_arrow_down,
                                          color: AppColor.iconColor,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          discoverSection(),
                          SizedBox(height: 15.0,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: AppColor.transparent,
                                        borderRadius: BorderRadius.circular(100),
                                        border: Border.all(color: AppColor.iconColor.withOpacity(0.4), width: 1.0),
                                      ),
                                      height: 55.0,
                                      width: 55.0,
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: AppColor.iconColor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 6.0,),
                                    Text(
                                      'New',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColor.textColor,
                                          letterSpacing: 0.4,
                                          fontWeight: FontWeight.w300
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        child: DefaultTabController(
                          length: 3,
                          child: Column(
                            children: [
                              TabBar(
                                indicatorColor: AppColor.iconColor,
                                indicatorWeight: 1.0,
                                onTap: (index) {

                                },
                                tabs: [
                                  Tab(
                                      icon: ImageIcon(
                                        AssetImage('assets/Icons/grid.png'),
                                        size: 25.0,
                                      ),
                                  ),
                                  Tab(
                                    icon: ImageIcon(
                                      AssetImage('assets/Icons/guide.png'),
                                      size: 25.0,
                                    ),
                                  ),
                                  Tab(
                                    icon: ImageIcon(
                                      AssetImage('assets/Icons/person_tag.png'),size: 25.0,),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: TabBarView(
                                  children: [
                                    tabBarView1(),
                                    tabBarView2(),
                                    tabBarView3(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer discoverSection() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: _showDiscovery ? 215.0 : 0.0,
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discover People',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColor.textColor,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.w500
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColor.buttonColor,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index){
                return Container(
                  width: 150.0,
                  margin: EdgeInsets.only(right: 5.0, left: index == 0 ? 10.0 : 0.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    border: Border.all(color: AppColor.divider, width: 1.0),
                  ),
                  child: Column(
                    children: [
                      CircularProfilePic(
                          profileUrl: 'https://i.pinimg.com/564x/14/c4/70/14c470ca5da7dc329fb1802237f422fc.jpg',
                          height: 70.0,
                          width: 70.0
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        'd_swag',
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColor.textColor,
                            letterSpacing: 0.4,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(height: 3.0,),
                      Text(
                        'Follows you',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColor.textColor,
                            letterSpacing: 0.4,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      FollowButton(
                        height: 30.0,
                        width: double.infinity,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget tabBarView1() {
    return gridView(postModel.length);
  }

  Widget tabBarView2() {
    return Center();
  }

  Widget tabBarView3() {
    return gridView(4);
  }

  Widget gridView(int length) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0
      ),
      itemCount: length,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Positioned.fill(
              child: CachedNetworkImage(
                imageUrl: postModel[index].posts.first,
                fit: BoxFit.cover,
                placeholder: (context, url,) {
                  return Shimmer.fromColors(
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      color: AppColor.storyBorder,
                    ),
                    baseColor: AppColor.shimmerBaseColor,
                    highlightColor: AppColor.shimmerHighlightColor,
                    period: Duration(seconds: 1),
                    direction: ShimmerDirection.ltr,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  showMenuBottomSheet(){
    showModalBottomSheet(
        isDismissible: true,
        enableDrag: true,
        backgroundColor: AppColor.bottomSheetBackground,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0))
        ),
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  width: 40,
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: AppColor.storyBorder,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/Icons/settings.png'),
                        color: AppColor.iconColor,
                        size: 22.0,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Settings',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: AppColor.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/Icons/archieve.png'),
                        color: AppColor.iconColor,
                        size: 22.0,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Archive',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/Icons/your_activity.png'),
                        color: AppColor.iconColor,
                        size: 22.0,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Your Activity',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/Icons/qr_code.png'),
                        color: AppColor.iconColor,
                        size: 22.0,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'QR Code',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/Icons/saved.png'),
                        color: AppColor.iconColor,
                        size: 22.0,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Saved',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/Icons/list.png'),
                        color: AppColor.iconColor,
                        size: 22.0,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Close Friends',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/Icons/virus.png'),
                        color: AppColor.iconColor,
                        size: 22.0,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'COVID-19 Information Center',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }
    );
  }

  showAddBottomSheet(){
    showModalBottomSheet(
        isDismissible: true,
        enableDrag: true,
        backgroundColor: AppColor.bottomSheetBackground,
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0))
        ),
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      width: 40,
                      height: 5.0,
                      decoration: BoxDecoration(
                        color: AppColor.storyBorder,
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                    Text(
                      'Create New',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: AppColor.textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Divider(
                      height: 20.0,
                      thickness: 1.0,
                      color: AppColor.storyBorder,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/Icons/grid.png'),
                        color: AppColor.iconColor,
                        size: 22.0,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Feed Post',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/Icons/reels.png'),
                        color: AppColor.iconColor,
                        size: 22.0,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Reel',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/Icons/story.png'),
                        color: AppColor.iconColor,
                        size: 22.0,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Story',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/Icons/story_heighlight.png'),
                        color: AppColor.iconColor,
                        size: 22.0,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Story Highlight',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/Icons/igtv.png'),
                        color: AppColor.iconColor,
                        size: 22.0,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'IGTV Video',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/Icons/guide.png'),
                        color: AppColor.iconColor,
                        size: 22.0,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Guide',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }
    );
  }
}

showAddUserBottomSheet(BuildContext context){
  showModalBottomSheet(
      isDismissible: true,
      enableDrag: true,
      backgroundColor: AppColor.bottomSheetBackground,
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0))
      ),
      builder: (context) {
        return Container(
          height: 170.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  width: 40,
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: AppColor.storyBorder,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 15.0),
                  child: Row(
                    children: [
                      CircularProfilePic(
                        profileUrl: 'https://lh3.googleusercontent.com/pw/ACtC-3fRELU5qnGtEsh9YhhyY9qbuz-SSieRCbo97YwkCpmRIgiGNKyuSdxkwINkqja-kKGfo2fn0nm16wVMj5jywoD35sZeb1P5Jz5gmpFXpUo5LcwZvfusad8pL7bDi_hZbooLNhOUZOPcfTyCeJ7yV5OutQ=s990-no',
                        height: 55.0,
                        width: 55.0,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'the_cybernaut_',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                          // color: AppColor.buttonColor,
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(color: AppColor.buttonColor, width: 8.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 15.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.transparent,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: AppColor.iconColor.withOpacity(0.4), width: 1.0),
                        ),
                        height: 55.0,
                        width: 55.0,
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: AppColor.iconColor,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Add Account',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColor.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
  );
}
