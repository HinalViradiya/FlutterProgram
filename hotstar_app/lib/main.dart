import 'package:flutter/material.dart';
import 'package:hotstar_app/detailScreen/youtube.dart';
import 'package:hotstar_app/screen/dashbord.dart';
import 'package:hotstar_app/screen/detail_page.dart';
import 'package:hotstar_app/screen/home_page.dart';
import 'package:hotstar_app/screen/movie_page.dart';
import 'package:hotstar_app/screen/port_folio_subpage.dart';
import 'package:hotstar_app/screen/splash.dart';
import 'package:hotstar_app/screen/sport_page.dart';
import 'package:hotstar_app/screen/tv_page.dart';

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
    //  home: const SplashScreen(),

      initialRoute: '/',  
      routes:  
     {
       '/': (context) => const YoutubeVideoScreen(),
        DetailPage.routeName: (context) => const DetailPage(),
        Dashboard.routeName: (context) => const Dashboard(),       
        HomePage.routeName: (context) => const HomePage(),
        MoviePage.routeName: (context) => const MoviePage(),
        GallerySubPage.routeName: (context) => const GallerySubPage(),
        SplashScreen.routeName: (context) => const SplashScreen(),
        SportPage.routeName: (context) => const SportPage(),
        TVPage.routeName: (context) => const TVPage(),
    },
    );
  }
}

