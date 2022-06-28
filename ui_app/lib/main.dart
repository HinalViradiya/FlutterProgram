import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:ui_app/pattern1.dart';
import 'package:ui_app/pattern2.dart';
import 'package:ui_app/pattern3.dart';
import 'package:ui_app/pattern4.dart';
import 'package:ui_app/pattern5.dart';
import 'package:ui_app/stack_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       /*  home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ), */
    // home: const page1(),
     //home: const pattern2(),
    //home: const pattern3(),
    //home: const pattern4(),

    //home: const pattern5(),
     home: const state_example(),
    );
  }
}


