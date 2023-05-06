import 'dart:async';
import 'package:flutter/material.dart';
import 'package:udemy1/presentation/resources/color_manager.dart';
import '../resources/assets_manager.dart';
import '../resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  Timer? _timer;
  _startDelay(){
    _timer = Timer(const Duration(seconds: 2), () {
      _goNext();
    });
  }
  _goNext(){
   Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer?.cancel();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: Image(
          //height: 100,
         // width: 100,
          image: AssetImage(ImageAssets.splashLogo.toString()
          ),
        ),
      )
    );
  }
}
