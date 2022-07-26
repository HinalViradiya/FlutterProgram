import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotstar_app/screen/Dashbord.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/SplashPage';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Dashboard())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}
