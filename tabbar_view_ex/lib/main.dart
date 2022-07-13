import 'package:flutter/material.dart';
import 'package:tabbar_view_ex/screen/home.dart';
import 'package:tabbar_view_ex/screen/setting.dart';
import 'package:tabbar_view_ex/screen/video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music',
      theme: ThemeData(
      
        primarySwatch: Colors.deepPurple
      ),
      initialRoute: "Home",
      routes: {
        "Home":(context) => HomePage(),
        "Video":(context) => VideoPage(),
        "Setting":(context) => SettingPage(),
      },
    );
  }
}

