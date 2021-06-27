import 'package:flutter/material.dart';
import 'package:instagram_clone/app_colors.dart';
import 'package:instagram_clone/home_tab/screen_one.dart';
import 'package:instagram_clone/home_tab/screen_three.dart';
import 'package:instagram_clone/home_tab/screen_two.dart';


class HomeTab extends StatefulWidget {
  const HomeTab({Key key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

TabController tabController;

class _HomeTabState extends State<HomeTab> with TickerProviderStateMixin {

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 3);
    tabController.index = 1;
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: AppColor.backgroundColor,
          body: Column(
            children: [
              Visibility(
                visible: false,
                child: TabBar(
                  controller: tabController,
                  onTap: (index) {
                    // Tab index when user select it, it start from zero
                  },
                  tabs: [
                    Tab(icon: Icon(Icons.card_travel, color: Colors.transparent,)),
                    Tab(icon: Icon(Icons.add_shopping_cart, color: Colors.transparent,)),
                    Tab(icon: Icon(Icons.add_shopping_cart, color: Colors.transparent,)),
                  ],
                  indicatorColor: Colors.transparent,
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ScreenOne(),
                    ScreenTwo(),
                    ScreenThree(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
