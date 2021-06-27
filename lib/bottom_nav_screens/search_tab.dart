import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app_colors.dart';
import 'package:instagram_clone/models/profile_model.dart';
import 'package:instagram_clone/widgets/profile_pic.dart';
import 'package:instagram_clone/widgets/searchbar.dart';
import 'package:shimmer/shimmer.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({Key key}) : super(key: key);

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {

  FocusNode _focus = new FocusNode();
  bool showImage = false;
  PostModel selectedIndex;

  @override
  void initState() {
    _focus.addListener(() {
      setState(() {

      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  height: 50,
                  child: Row(
                    children: [
                      Visibility(
                        visible: _focus.hasFocus,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                _focus.unfocus();
                              },
                              child: Icon(
                                Icons.keyboard_backspace_outlined,
                                color: AppColor.iconColor,
                                size: 35,
                              ),
                            ),
                            SizedBox(width: 20,),
                          ],
                        ),
                      ),
                      Expanded(child: SearchBar(focus: _focus,)),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      mainAxisSpacing: 2.0,
                      crossAxisSpacing: 2.0
                    ),
                    itemCount: postModel.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onLongPress: () {
                          setState(() {
                            selectedIndex = postModel[index];
                            showImage = true;
                          });
                        },
                        onLongPressEnd: (LongPressEndDetails details) {
                          setState(() {
                            selectedIndex = null;
                            showImage = false;
                          });
                        },
                        child: Stack(
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
                            Visibility(
                              visible: postModel[index].posts.length > 1,
                              child: Positioned(
                                top: 6.0,
                                right: 8.0,
                                child: ImageIcon(
                                  AssetImage('assets/Icons/image_stack.png'),
                                  color: Colors.white,
                                  size: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Visibility(
              visible: showImage,
              child: Positioned.fill(
                child: Container(
                  // height: double.infinity,
                  width: double.infinity,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                      child: Center(
                        child: Container(
                          height: 400.0,
                          constraints: BoxConstraints(
                            // maxHeight: MediaQuery.of(context).size.height / 1.3,
                            minHeight: 400.0
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColor.bottomSheetBackground,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    CircularProfilePic(
                                        profileUrl: selectedIndex != null ? selectedIndex.profilePic : '',
                                        height: 35.0,
                                        width: 35.0
                                    ),
                                    SizedBox(width: 10.0,),
                                    Text(
                                      selectedIndex != null ? selectedIndex.username : '',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 16,
                                        color: AppColor.textColor,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.6,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 300.0,
                                width: double.infinity,
                                child: Image.network(
                                  selectedIndex != null ? selectedIndex.posts.first : '',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    ImageIcon(
                                      AssetImage('assets/Icons/heart.png'),
                                      color: AppColor.iconColor,
                                      size: 25.0,
                                    ),
                                    ImageIcon(
                                      AssetImage('assets/Icons/account.png'),
                                      color: AppColor.iconColor,
                                      size: 25.0,
                                    ),
                                    ImageIcon(
                                      AssetImage('assets/Icons/send.png'),
                                      color: AppColor.iconColor,
                                      size: 25.0,
                                    ),
                                    Icon(
                                      Icons.more_vert,
                                      color: AppColor.iconColor,
                                      size: 25.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
