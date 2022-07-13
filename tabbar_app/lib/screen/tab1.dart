import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tab1Page extends StatefulWidget {
  const Tab1Page({Key? key}) : super(key: key);

  @override
  State<Tab1Page> createState() => _tab1PageState();
}

class _tab1PageState extends State<Tab1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
        children: [
            Align(
              alignment: Alignment.center,
              child: Container(
              color: Colors.blueAccent[100],
              height: 652,
              width: 500,
              child: const Text("Tab1"),
                      ),
            )
        ],
      ),
    );
  }
}
