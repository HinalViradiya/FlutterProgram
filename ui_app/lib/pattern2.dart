import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class pattern2 extends StatefulWidget {
  const pattern2({Key? key}) : super(key: key);

  @override
  State<pattern2> createState() => _pattern2State();
}

class _pattern2State extends State<pattern2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
            width: 100,
            color: Colors.blue,
            ),
             Container(
              height: 100,
            width: 100,
            color: Colors.blue,
            )
          ],
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
            width: 100,
            color: Colors.blue,
            ),
             Container(
              height: 100,
            width: 100,
            color: Colors.blue,
            )
          ],
        )
      ],
    ));
  }
}
