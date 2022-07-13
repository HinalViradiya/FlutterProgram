import 'package:flutter/material.dart';
import 'package:tabbar_view_ex/slide_drawer.dart';
import 'package:tabbar_view_ex/tabs/bottom/about.dart';
import 'package:tabbar_view_ex/tabs/bottom/info.dart';
import 'package:tabbar_view_ex/tabs/bottom/music.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Music",
                icon: Icon(Icons.music_note),
              ),
              Tab(
                text: "Info",
                icon: Icon(Icons.settings),
              ),
              Tab(
                text: "About",
                icon: Icon(
                  Icons.fastfood,
                ),
              ),
            ],
          ),
        ),
        drawer: const SideDrawerPage(),
        body: const TabBarView(children: [
          MusicTab(),
          InfoTab(),
          AboutTab(),
        ])
      ),
    );
  }
}
