import 'package:flutter/material.dart';
import 'package:hotstar_app/screen/detail_page.dart';
import 'package:hotstar_app/screen/splash.dart';

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
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      primarySwatch: Colors.blue,
      ),
      themeMode: ThemeMode.dark, 
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),


      routes:  
     {
        DetailPage.routeName: (context) => DetailPage(),
    },
    );
  }
}

