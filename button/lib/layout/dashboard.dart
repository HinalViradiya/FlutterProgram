import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         Center(child: const Text("WelCome to the Application",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
        ],
      )
    );

  }
}