import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app_colors.dart';
import 'package:instagram_clone/models/settings_model.dart';
import 'package:instagram_clone/widgets/searchbar.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatelessWidget {
  const Settings({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.transparent,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.keyboard_backspace_outlined,
              color: AppColor.iconColor,
              size: 35,
            ),
          ),
          title: Text(
            'Settings',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 25,
              color: AppColor.textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: false,
        ),
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowGlow();
            return;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SearchBar(width: double.infinity,),
                ),
                ...List.generate(settingsModelList.length, (index) {
                  return InkWell(
                    onTap: () async {
                      if(settingsModelList[index].id == 7){
                        await canLaunch('mailto:dev-srinivasa@outlook.in')
                            ? await launch('mailto:dev-srinivasa@outlook.in')
                            : throw 'Could not launch';
                      }

                      if(settingsModelList[index].id == 8){
                        await canLaunch('https://srinivasa.dev/')
                            ? await launch('https://srinivasa.dev/')
                          : throw 'Could not launch https://srinivasa.dev/';
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          ImageIcon(
                            AssetImage(settingsModelList[index].image),
                            color: AppColor.iconColor,
                            size: 24.0,
                          ),
                          SizedBox(width: 15.0),
                          Text(
                            settingsModelList[index].title,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: AppColor.textColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'from\n',
                        style: TextStyle(
                          color: AppColor.textColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          height: 1.5,
                        ),
                        children: [
                          TextSpan(
                              text: 'Srinivasa.',
                              style: TextStyle(
                                  color: AppColor.textColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  height: 1.5,
                                  letterSpacing: 2
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () async {
                                const url = 'https://srinivasa.dev';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
