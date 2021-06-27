import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app_colors.dart';
import 'package:instagram_clone/bottom_nav_screens/activity_tab.dart';
import 'package:instagram_clone/bottom_nav_screens/home_tab.dart';
import 'package:instagram_clone/bottom_nav_screens/profile_tab.dart';
import 'package:instagram_clone/bottom_nav_screens/reels_tab.dart';
import 'package:instagram_clone/bottom_nav_screens/search_tab.dart';

List<CameraDescription> cameras;

Future<void> main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
  cameras = await availableCameras();
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

  int _currentTabIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: _currentTabIndex);
    super.initState();
  }

  List<Widget> tabPages = [
    HomeTab(),
    SearchTab(),
    ReelsTab(),
    ActivityTab(),
    ProfileTab(),
  ];

  void onPageChanged(int page) {
    setState(() {
      this._currentTabIndex = page;
    });
  }

  void tabTapped(int index) {
    setState(() {
      this._pageController.animateToPage(index,duration: const Duration(milliseconds: 200),curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      bottomNavigationBar: Theme(
        data: ThemeData(
          highlightColor: AppColor.transparent,
          splashColor: AppColor.transparent,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColor.backgroundColor,
          showSelectedLabels: false,
          elevation: 0,
          iconSize: 23,
          currentIndex: _currentTabIndex,
          onTap: tabTapped,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              backgroundColor: AppColor.backgroundColor,
              icon: ImageIcon(
                AssetImage(
                    _currentTabIndex == 0 ? 'assets/Icons/home_fill.png' : 'assets/Icons/home.png',
                ),
                color: AppColor.iconColor,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColor.backgroundColor,
              icon: ImageIcon(
                AssetImage(
                    _currentTabIndex == 1 ? 'assets/Icons/search_fill.png' : 'assets/Icons/search.png'
                ),
                color: AppColor.iconColor,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColor.backgroundColor,
              icon: ImageIcon(
                AssetImage(
                    _currentTabIndex == 2 ? 'assets/Icons/reels_fill.png' : 'assets/Icons/reels.png'
                ),
                color: AppColor.iconColor,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColor.backgroundColor,
              icon: ImageIcon(
                AssetImage(
                    _currentTabIndex == 3 ? 'assets/Icons/heart_fill.png' : 'assets/Icons/heart.png'
                ),
                color: AppColor.iconColor,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColor.backgroundColor,
              icon: CircleAvatar(
                backgroundColor: AppColor.backgroundColor,
                radius: 15,
                backgroundImage: AssetImage(
                  'assets/srinivasa.png',
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: _currentTabIndex == 4 ? AppColor.iconColor : AppColor.transparent),
                  ),
                ),
              ),
              title: Text('assets/srinivasa.png'),
            ),
          ],
        ),
      ),
      body: PageView(
        children: tabPages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }
}

