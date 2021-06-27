import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app_colors.dart';
import 'package:instagram_clone/bottom_nav_screens/home_tab.dart';
import 'package:instagram_clone/main.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {

  CameraController _cameraController;
  bool _flash = false;
  bool _flipCam = false;

  initializeCamera(int cam) {
    _cameraController = CameraController(cameras[cam], ResolutionPreset.max);
    _cameraController.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void initState() {
    initializeCamera(0);
    super.initState();
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    super.dispose();
  }

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
          body: Stack(
            children: [
              Positioned.fill(
                  child: CameraPreview(_cameraController),
              ),
              Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ImageIcon(
                        AssetImage('assets/Icons/settings.png'),
                        color: Colors.white,
                        size: 30.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _flash = !_flash;
                          });
                          if(_flash){
                            var torchOn = FlashMode.always;
                          } else {
                            var torchOff = FlashMode.off;
                          }
                        },
                        child: ImageIcon(
                          _flash ? AssetImage('assets/Icons/flash.png') : AssetImage('assets/Icons/no_flash.png'),
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: onBack,
                        child: Icon(
                          Icons.cancel_outlined,
                          color: Colors.white,
                          size: 33.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Column(
                  children: [
                    Container(
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(color: Colors.white, width: 3.0),
                      ),
                      padding: EdgeInsets.all(3.0),
                      child: GestureDetector(
                        onTap: () async {
                          XFile file = await _cameraController.takePicture();
                          return file;
                        },
                        child: Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      width: double.infinity,
                      color: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _flipCam = !_flipCam;
                              if(_flipCam){
                                initializeCamera(1);
                              } else {
                                initializeCamera(0);
                              }
                            });
                          },
                          child: Icon(
                            Icons.flip_camera_ios_outlined,
                            color: Colors.white,
                            size: 35.0,
                          ),
                        ),
                      ),
                    ),
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
