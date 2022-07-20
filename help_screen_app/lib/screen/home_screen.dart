
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
    
  @override
  Widget build(BuildContext context) {
    var getScreenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Center(
          child: CarouselSlider(
              options: CarouselOptions(height: getScreenHeight,autoPlay: true,viewportFraction: 1.0),
              items: [
                MyImageView("assets/images/1.jpeg"),
                MyImageView("assets/images/2.jpeg"),
                MyImageView("assets/images/3.jpeg"),
                MyImageView("assets/images/4.jpeg"),
                MyImageView("assets/images/5.jpeg"),
                MyImageView("assets/images/6.jpeg"),             
              ]
          ),
        )
    );
}
}
@immutable
 class MyImageView extends StatelessWidget{
 
  String imgPath;
 
  MyImageView(this.imgPath);
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(imgPath),
        )
    );
  }
 
}