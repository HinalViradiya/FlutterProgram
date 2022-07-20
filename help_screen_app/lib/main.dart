import 'package:flutter/material.dart';
import 'package:help_screen_app/screen/dashboard.dart';
import 'package:help_screen_app/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(      
        primarySwatch: Colors.blue,
      ),
     home: const DashBoardScreen(),
      // home: const HomePage(),
    );
  }
}

