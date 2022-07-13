import 'package:flutter/material.dart';
import 'package:tabbar_app/screen/tab1.dart';
import 'package:tabbar_app/screen/tab2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>   {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(          
          backgroundColor: Colors.white,
          actions: [
             IconButton(
                onPressed: () {
                  setState(() {
                    _show();
                  });
                },
                icon: const Icon(Icons.search,color: Color.fromARGB(255, 45, 44, 44),)),
            IconButton(
                onPressed: () {
                  setState(() {
                    _show();
                  });
                },
                icon: const Icon(Icons.more_vert,color:  Color.fromARGB(255, 45, 44, 44),)),
                
          ],
          title: const Text("Music",style: TextStyle(color:  Color.fromARGB(255, 45, 44, 44),)),
          bottom: const TabBar(
            tabs: [
            Tab(icon: Icon(Icons.music_note,color: Colors.black87,)),
            Tab(icon: Icon(Icons.play_circle_outline,color: Colors.black87,)),
            Tab(icon: Icon(Icons.book,color: Colors.black87,)),
          ]),
        ),
        body: 
        const TabBarView(        
          children: [
            Tab1Page(),
            Tab2page(),
             Tab1Page(),
          ],
        ),
      ),
    );
    //  DefaultTabController(
    //   length: 2,
    //   child: Scaffold(
    //     appBar: AppBar(),

    //   ),
    // );
  }

  _show() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("AlertDialog"),
            actions: [
              ElevatedButton(onPressed: () {}, child: const Text("OK")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("no"))
            ],
          );
        });
  }
}
