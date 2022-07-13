import 'package:flutter/material.dart';

class Tab2page extends StatefulWidget {
  const Tab2page({Key? key}) : super(key: key);

  @override
  State<Tab2page> createState() => _Tab2pageState();
}

class _Tab2pageState extends State<Tab2page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
        children: [
        
          Container(
            color: Colors.cyanAccent[200],
            height:  652,
            width: 300,
            child:   const Text("Tab2"),
          )
        ],
      ),
    );
  }
}
