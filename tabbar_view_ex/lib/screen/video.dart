import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tabbar_view_ex/tabs/top/tab1.dart';
import 'package:tabbar_view_ex/tabs/top/tab2.dart';
import 'package:tabbar_view_ex/tabs/top/tab3.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  int _index=0;
  final List<Widget> _tabs =[Tab1(),Tab2(),Tab3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video"),
      ),
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index)=> setState(() {
          _index =index;
        }),
        items:const [
        BottomNavigationBarItem(
          label: "Camera",
          icon: Icon(Icons.camera),
        ),
        BottomNavigationBarItem(
          label: "Map",
          icon: Icon(Icons.map),
        ), BottomNavigationBarItem(
          label: "Mail",
          icon: Icon(Icons.mail),
        ),
      ]),
    );
  }
}
