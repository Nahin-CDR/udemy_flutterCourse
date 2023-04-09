import 'package:flutter/material.dart';
import 'package:udemy1/app/app.dart';


class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  void updateAppState(){
    MyApp.instance.appState = 10;
  }
  void getAppState(){
    print(MyApp.instance.appState);
  }

  @override
  Widget build(BuildContext context) {
    updateAppState();
    getAppState();
    return Scaffold();
  }
}
