import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mine/util/mineStyleUtil.dart';

void main() {
  if(kReleaseMode) {
    ErrorWidget.builder = (FlutterErrorDetails flutterErrorDetails) {
      debugPrint(flutterErrorDetails.toString());
      return Material(child: Center(child: Text("Error, contact developer\nemail: 609451243@qq.com", textAlign: TextAlign.center)));
    };
  }
  runApp(MineApp());
}

class MineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MineApp",
      theme: ThemeData(
        brightness: Brightness.dark,
        hintColor: Colors.white,
        accentColor: Colors.white,
        primaryColor: MineColor.orange,
        primaryColorBrightness: Brightness.dark,
        scaffoldBackgroundColor: MineColor.back1,
        dialogBackgroundColor: MineColor.back2,
        accentColorBrightness: Brightness.light,
        textTheme: TextTheme(bodyText1: MineTextStyle.normal),
      ),
      home: HomePage(),
    )
  }
}
