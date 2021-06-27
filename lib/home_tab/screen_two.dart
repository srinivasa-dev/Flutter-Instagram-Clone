import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app_colors.dart';
import 'package:instagram_clone/bottom_nav_screens/home_tab.dart';
import 'package:instagram_clone/models/profile_model.dart';
import 'package:instagram_clone/models/story_model.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> with TickerProviderStateMixin {

  int postPageIndex = 0;

  List<int> selectedHeartIndex = [];
  List<int> selectedBookmarkIndex = [];

  AnimationController _animatedHeartController;
  AnimationController _animatedBookmarkController;

  bool showPostHeart = false;

  void animateHeart() {
    _animatedHeartController.forward();
    Timer(Duration(milliseconds: 700), () {
      _animatedHeartController.reverse();
    });
    // _animatedHeartController.reverse();
  }

  void animateBookmark() {
    _animatedBookmarkController.forward();
    Timer(Duration(milliseconds: 700), () {
      _animatedBookmarkController.reverse();
    });
  }

  @override
  void initState() {
    _animatedHeartController = AnimationController(duration: const Duration(milliseconds: 700), vsync: this)..addListener(() {
      setState(() {

      });
    });
    _animatedBookmarkController = AnimationController(duration: const Duration(milliseconds: 700), vsync: this)..addListener(() {
      setState(() {

      });
    });
    super.initState();
  }

  @override
  void dispose() {
    this._animatedHeartController.dispose();
    this._animatedBookmarkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tabController.index = 0;
                      });
                    },
                    child: ImageIcon(
                      AssetImage('assets/Icons/upload.png'),
                      color: AppColor.iconColor,
                      size: 25,
                    ),
                  ),
                  Text(
                    'Instagram',
                    style: TextStyle(
                      fontFamily: 'Billabong',
                      fontSize: 35,
                      color: AppColor.textColor,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.9
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tabController.index = 2;
                      });
                    },
                    child: ImageIcon(
                      AssetImage('assets/Icons/messenger.png'),
                      color: AppColor.iconColor,
                      size: 27,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (OverscrollIndicatorNotification overscroll) {
                  overscroll.disallowGlow();
                  return;
                },
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      storyBuilder(),
                      Divider(
                        color: AppColor.divider,
                        thickness: 0.7,
                        height: 0,
                      ),
                      postBuilder(context),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container storyBuilder() {
    return Container(
      height: 95.0,
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 0, 10.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: storyModel.length,
        itemBuilder: (context, index){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 73.0,
                width: 73.0,
                margin: EdgeInsets.only(right: 13.0),
                padding: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  gradient: storyModel[index].active ? LinearGradient(
                    colors: [
                      const Color.fromRGBO(193,53,132,1),
                      const Color.fromRGBO(253,29,29, 1),
                      const Color.fromRGBO(245,96,64, 1),
                      const Color.fromRGBO(247,119,55, 1),
                      const Color.fromRGBO(252,175,69, 1),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    tileMode: TileMode.clamp,
                  ) : null,
                  borderRadius: BorderRadius.circular(100.0),
                  border: storyModel[index].active ? Border.all(width: 0) : Border.all(color: AppColor.storyBorder, width: 2.0),
                ),
                child: Container(
                  padding: storyModel[index].active ? EdgeInsets.all(3.0) : EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    color: AppColor.backgroundColor,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: CachedNetworkImage(
                      imageUrl: storyModel[index].profilePic,
                      placeholder: (context, url,) {
                        return Shimmer.fromColors(
                          child: Container(
                            height: 70.0,
                            width: 70.0,
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
                ),
              ),
              SizedBox(height: 6.0,),
              Container(
                width: 70.0,
                child: Center(
                  child: Text(
                    storyModel[index].username,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: AppColor.textColor
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Column postBuilder(BuildContext context) {
    return Column(
      children: List.generate(postModel.length, (index) {
        return Visibility(
          visible: postModel[index].username != 'the_cybernaut_',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 38.0,
                      width: 38.0,
                      margin: EdgeInsets.only(right: 13.0),
                      padding: EdgeInsets.all(1.5),
                      decoration: BoxDecoration(
                        gradient: index == 5 || index == 13 || index == 17 ? LinearGradient(
                          colors: [
                            const Color.fromRGBO(193,53,132,1),
                            const Color.fromRGBO(253,29,29, 1),
                            const Color.fromRGBO(245,96,64, 1),
                            const Color.fromRGBO(247,119,55, 1),
                            const Color.fromRGBO(252,175,69, 1),
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          tileMode: TileMode.clamp,
                        ) : null,
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: Container(
                        padding: index == 5 || index == 13 || index == 17 ? EdgeInsets.all(3.0) : EdgeInsets.all(0.0),
                        decoration: BoxDecoration(
                          color: AppColor.backgroundColor,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: CachedNetworkImage(
                            imageUrl: postModel[index].profilePic,
                            placeholder: (context, url,) {
                              return Shimmer.fromColors(
                                child: Container(
                                  height: 35.0,
                                  width: 35.0,
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
                      ),
                    ),
                    Text(
                      postModel[index].username,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        color: AppColor.textColor,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.6,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        showBottomSheet();
                      },
                      child: Icon(
                        Icons.more_vert,
                        color: AppColor.iconColor,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: AppColor.divider,
                thickness: 0.7,
                height: 0,
              ),
              innerPostBuilder(index, context),
              Divider(
                color: AppColor.divider,
                thickness: 0.7,
                height: 0,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                animateHeart();
                                setState(() {
                                  if(selectedHeartIndex.contains(index)){
                                    selectedHeartIndex.remove(index);
                                  } else {
                                    selectedHeartIndex.add(index);
                                  }
                                });
                              },
                              child: ScaleTransition(
                                scale: Tween(begin: 1.0, end: 1.4)
                                    .animate(CurvedAnimation(
                                    parent: _animatedHeartController,
                                    curve: Curves.elasticOut
                                )
                                ),
                                child: ImageIcon(
                                  AssetImage(
                                      selectedHeartIndex.contains(index) ? 'assets/Icons/heart_fill.png' : 'assets/Icons/heart.png'
                                  ),
                                  size: 25.0,
                                  color: selectedHeartIndex.contains(index) ? AppColor.heart : AppColor.iconColor,
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            ImageIcon(
                              AssetImage(
                                  'assets/Icons/comment.png'
                              ),
                              size: 24.0,
                              color: AppColor.iconColor,
                            ),
                            SizedBox(width: 20,),
                            ImageIcon(
                              AssetImage(
                                  'assets/Icons/send.png'
                              ),
                              size: 23.0,
                              color: AppColor.iconColor,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            animateBookmark();
                            setState(() {
                              if(selectedBookmarkIndex.contains(index)){
                                selectedBookmarkIndex.remove(index);
                              } else {
                                selectedBookmarkIndex.add(index);
                              }
                            });
                          },
                          child: ScaleTransition(
                            scale: Tween(begin: 1.0, end: 1.4)
                                .animate(CurvedAnimation(
                                parent: _animatedBookmarkController,
                                curve: Curves.elasticOut
                            )
                            ),
                            child: ImageIcon(
                              AssetImage(
                                  selectedBookmarkIndex.contains(index) ? 'assets/Icons/saved_fill.png' : 'assets/Icons/saved.png'
                              ),
                              size: 23.0,
                              color: AppColor.iconColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Visibility(
                        visible: postModel[index].posts.length > 1,
                        child: AnimatedSmoothIndicator(
                          axisDirection: Axis.horizontal,
                          activeIndex: postPageIndex,
                          // duration: Duration(seconds: 1),
                          count: postModel[index].posts.length,
                          effect: WormEffect(
                            dotWidth: 5.0,
                            dotHeight: 5.0,
                            spacing: 5.0,
                            dotColor: AppColor.pageIndicatorDeActive,
                            activeDotColor: AppColor.pageIndicatorActive,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0, 10, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${postModel[index].likes} likes',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 13,
                        color: AppColor.textColor,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.6,
                      ),
                    ),
                    SizedBox(height: 3,),
                    RichText(
                      text: TextSpan(
                        text: '${postModel[index].username} ',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: AppColor.textColor,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.6,
                        ),
                        children: [
                          TextSpan(
                            text: postModel[index].caption,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 13,
                              color: AppColor.textColor,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 0.6,
                            ),
                          ),
                        ]
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Stack innerPostBuilder(int index, BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onDoubleTap: () {
            setState(() {
              if(!selectedHeartIndex.contains(index)){
                selectedHeartIndex.add(index);
              }
              if(selectedHeartIndex.contains(index)){
                Timer(Duration(seconds: 2), () {
                  setState(() {
                    showPostHeart = false;
                  });
                });
                setState(() {
                  showPostHeart = true;
                });
                animateHeart();
              }
            });
          },
          child: Container(
            height: 400,
            child: PageView(
              children: List.generate(postModel[index].posts.length, (ind) {
                return Container(
                  height: 400,
                  constraints: BoxConstraints(
                    maxHeight: 600,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: CachedNetworkImage(
                    imageUrl: postModel[index].posts[ind],
                    fit: BoxFit.cover,
                    placeholder: (context, url,) {
                      return Shimmer.fromColors(
                        child: Container(
                          height: 35.0,
                          width: 35.0,
                          color: AppColor.storyBorder,
                        ),
                        baseColor: AppColor.shimmerBaseColor,
                        highlightColor: AppColor.shimmerHighlightColor,
                        period: Duration(seconds: 1),
                      );
                    },
                  ),
                );
              }),
              controller: PageController(
                viewportFraction: 1,
                initialPage: 0,
              ),
              physics: BouncingScrollPhysics(),
              onPageChanged: (pageNo) {
                setState(() {
                  postPageIndex = pageNo;
                });
              },
            ),
          ),
        ),
        Visibility(
          visible: postModel[index].posts.length > 1 && postPageIndex+1 > 1,
          child: Positioned(
            top: 10,
            right: 20,
            child: Container(
              width: 50,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.pageCount,
              ),
              child: Center(
                child: Text(
                  '${postPageIndex+1}/${postModel[index].posts.length}',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: showPostHeart,
          child: ScaleTransition(
            scale: Tween(begin: 1.0, end: 0.7)
                .animate(CurvedAnimation(
                parent: _animatedHeartController,
                curve: Curves.elasticOut
            )
            ),
            child: ImageIcon(
              AssetImage(
                'assets/Icons/heart_fill.png'
              ),
              size: 100,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  showBottomSheet(){
    showModalBottomSheet(
      backgroundColor: AppColor.bottomSheetBackground,
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    width: 40,
                    child: Divider(
                      thickness: 4,
                      color: AppColor.storyBorder,
                      height: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: Text(
                    'Report...',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: AppColor.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: Text(
                    'Turn on Post Notifications',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: AppColor.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: Text(
                    'About this Account',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: AppColor.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: Text(
                    'Copy Link',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: AppColor.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: Text(
                    'Share to...',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: AppColor.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: Text(
                    'Unfollow',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: AppColor.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: Text(
                    'Mute',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: AppColor.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}
