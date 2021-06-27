import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app_colors.dart';
import 'package:instagram_clone/widgets/profile_pic.dart';
import 'package:shimmer/shimmer.dart';
import 'package:video_player/video_player.dart';

class ReelsTab extends StatefulWidget {
  const ReelsTab({Key key}) : super(key: key);

  @override
  _ReelsTabState createState() => _ReelsTabState();
}

class _ReelsTabState extends State<ReelsTab> with TickerProviderStateMixin {

  int _pageIndex = 0;
  List<int> selectedHeartIndex = [];
  AnimationController _animatedHeartController;
  bool showPostHeart = false;
  VideoPlayerController _videoController;
  List<int> videoPlayList = [];

  void animateHeart() {
    _animatedHeartController.forward();
    Timer(Duration(milliseconds: 700), () {
      _animatedHeartController.reverse();
    });
    // _animatedHeartController.reverse();
  }

  videoControllerReel(int index) {
    String url = 'https://player.vimeo.com/external/538577936.sd.mp4?s=c5fc21ff3bf6d40f842bca312fba58bdd136dbfc&profile_id=165&oauth2_token_id=57447761';
    switch(index){
      case 0: {
        setState(() {
          url = 'https://player.vimeo.com/external/538577936.sd.mp4?s=c5fc21ff3bf6d40f842bca312fba58bdd136dbfc&profile_id=165&oauth2_token_id=57447761';
        });
      }
      break;
      case 1: {
        url = 'https://player.vimeo.com/external/540213523.sd.mp4?s=3b80fff4583df6c860b398890aaf8e5145fa16c4&profile_id=165&oauth2_token_id=57447761';
      }
      break;
      case 2: {
        url = 'https://player.vimeo.com/external/420234573.sd.mp4?s=1ee7e9aafcd3fdd3b3675b35f2a8b2f97f342ac8&profile_id=165&oauth2_token_id=57447761';
      }
      break;
      case 3: {
        url = 'https://player.vimeo.com/external/524748008.sd.mp4?s=8772392acebd9a216a04161a965db9a4c6d4e741&profile_id=165&oauth2_token_id=57447761';
      }
      break;
      case 4: {
        url = 'https://player.vimeo.com/external/398518760.sd.mp4?s=74ee9c2459c035f5bbbb8775062318cdf4b8899e&profile_id=165&oauth2_token_id=57447761';
      }
      break;
      case 5: {
        url = 'https://player.vimeo.com/external/430014215.sd.mp4?s=2c2fedb46aa038dcc4664ad42ef6a0e002bf312a&profile_id=165&oauth2_token_id=57447761';
      }
      break;
      case 6: {
        url = 'https://player.vimeo.com/external/420239849.sd.mp4?s=cb5ba2b5a3be46a2b573ac62364f88946fb6a9f3&profile_id=165&oauth2_token_id=57447761';
      }
      break;
      case 7: {
        url = 'https://player.vimeo.com/external/484732151.sd.mp4?s=920e951e2eb3ff30c108209d9bf1f4a95c80918f&profile_id=165&oauth2_token_id=57447761';
      }
      break;
      case 8: {
        url = 'https://player.vimeo.com/external/420239207.sd.mp4?s=2b5a6633c37af1a6fb0beb02c06bdc376fdfcce2&profile_id=165&oauth2_token_id=57447761';
      }
      break;
      case 9: {
        url = 'https://player.vimeo.com/external/476838909.sd.mp4?s=33e4e8ec8dcd99aefd4eda56737c498ac69c8c1f&profile_id=165&oauth2_token_id=57447761';
      }
      break;
    }
    _videoController = VideoPlayerController.network(
      url
    )..initialize().then((_) {
        setState(() {
          _videoController.play();
          _videoController.setLooping(true);
        });
      });
  }

  @override
  void initState() {

    videoControllerReel(_pageIndex);

    _animatedHeartController = AnimationController(duration: const Duration(milliseconds: 700), vsync: this)..addListener(() {
      setState(() {

      });
    });

    super.initState();
  }

  @override
  void dispose() {
    this._animatedHeartController.dispose();
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Stack(
          children: [
            PageView(
              onPageChanged: (value) {
                setState(() {
                  _pageIndex = value;
                  videoControllerReel(_pageIndex);
                  if(videoPlayList.contains(value)){
                    videoPlayList.remove(value);
                    _videoController.play();
                  } else {
                    videoPlayList.add(value);
                    _videoController.pause();
                  }
                });
              },
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              controller: PageController(
                viewportFraction: 1,
                initialPage: 0,
              ),
              children: List.generate(10, (index) {
                return GestureDetector(
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
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.grey[500]),
                          strokeWidth: 1,
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: _videoController.value.isInitialized
                            ? VideoPlayer(_videoController)
                            : Container(),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 15,
                        left: 15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircularProfilePic(
                                      profileUrl: 'https://lh3.googleusercontent.com/pw/ACtC-3fRELU5qnGtEsh9YhhyY9qbuz-SSieRCbo97YwkCpmRIgiGNKyuSdxkwINkqja-kKGfo2fn0nm16wVMj5jywoD35sZeb1P5Jz5gmpFXpUo5LcwZvfusad8pL7bDi_hZbooLNhOUZOPcfTyCeJ7yV5OutQ=s990-no',
                                      height: 30.0,
                                      width: 30.0,
                                    ),
                                    SizedBox(width: 5,),
                                    Text(
                                      'the_cybernaut_ • Follow',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.6,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15.0,),
                                Text(
                                  'These are reels by Srinivasa 😃',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.6,
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text(
                                  'PlayaPhonk • PHONKY TOWN 🅴',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.6,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                      size: 28,
                                      color: selectedHeartIndex.contains(index) ? AppColor.heart : AppColor.iconColor,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2,),
                                Text(
                                  '1,580',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.6,
                                  ),
                                ),
                                SizedBox(height: 20,),
                                ImageIcon(
                                  AssetImage('assets/Icons/comment.png'),
                                  size: 28,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 2,),
                                Text(
                                  '72',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.6,
                                  ),
                                ),
                                SizedBox(height: 20,),
                                ImageIcon(
                                  AssetImage('assets/Icons/send.png'),
                                  size: 28,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 25,),
                                Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                SizedBox(height: 25,),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://i1.sndcdn.com/artworks-DzseS8bLwevQZ0i6-OyW5jw-t500x500.jpg',
                                      placeholder: (context, url,) {
                                        return Shimmer.fromColors(
                                          child: Container(
                                            height: 30.0,
                                            width: 30.0,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8.0),
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
                              ],
                            ),
                          ],
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
                  ),
                );
              }),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    'Reels',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  ImageIcon(
                    AssetImage('assets/Icons/camera.png'),
                    color: Colors.white,
                    size: 26,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
