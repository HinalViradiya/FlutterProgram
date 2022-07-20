import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

//With Custom Indicator
class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int currentPos = 0;
  List<String> listPaths = [
    "assets/images/1.jpeg",
    "assets/images/2.jpeg",
    "assets/images/3.jpeg",
    "assets/images/4.jpeg",
    "assets/images/5.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Center(
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /* CarouselSlider.builder(
              itemCount: listPaths.length,
              itemBuilder: (context, index) {
                return MyImageView(listPaths[index]);
              }
                options: CarouselOptions(
                height: height,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentPos = index;
                    });
                  }))*/
          CarouselSlider(
              items: listPaths.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Image.asset(i)

                        //AssetImage("assets/images/launcher.jpg"),

                        );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                  height: height,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {});
                  })),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: listPaths.map((url) {
                int index = listPaths.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPos == index
                        ? const Color.fromARGB(230, 52, 49, 49)
                        : const Color.fromARGB(228, 190, 192, 182),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    ));
  }
}

@immutable
class MyImageView extends StatelessWidget {
  String path = "assets/images/5.jpeg";

  MyImageView(String path) {
    this.path = path;
  }

  @override
  Widget build(BuildContext context) {
    stdout.write("Path :   $path");
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Image.asset(path),
      ),
    );
  }
}
