import 'package:flutter/material.dart';

class TVPage extends StatefulWidget {
  const TVPage({Key? key}) : super(key: key);

  @override
  State<TVPage> createState() => _TVPageState();
}

List<String> _listWebSeries = [
  "assets/hollywood/dracula.jpg",
  "assets/hollywood/gijoe.jpg",
  "assets/hollywood/ironMan.jpg",
  "assets/hollywood/major.jpg",
  "assets/hollywood/mortal.jpg",
  "assets/hollywood/peak.jpg",
  "assets/hollywood/rogue.jpg",
  "assets/hollywood/thor.jpg",
  "assets/hollywood/train.jpg",
];

List<Map<String, dynamic>> _postList = [
  {"image": "assets/hollywood/dracula.jpg", "text": "Dracula"},
  {"image": "assets/hollywood/gijoe.jpg", "text": "Gijoe"},
  {"image": "assets/hollywood/ironMan.jpg", "text": "IronMan"},
  {"image": "assets/hollywood/peak.jpg", "text": "peak"},
  {"image": "assets/hollywood/major.jpg", "text": "Major"},
  {"image": "assets/hollywood/mortal.jpg", "text": "Mortal"},
  {"image": "assets/hollywood/rogue.jpg", "text": "Rogue"},
  {"image": "assets/hollywood/thor.jpg", "text": "Thor"},
  {"image": "assets/hollywood/train.jpg", "text": "Train"},
];

class _TVPageState extends State<TVPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const SliverAppBar(
          backgroundColor: Colors.amber,
          title: Text('Kindacode.com'),
          expandedHeight: 30,
          collapsedHeight: 150,
        ),
        const SliverAppBar(
          backgroundColor: Colors.green,
          title: Text('Have a nice day'),
          floating: true,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Card(
                margin: const EdgeInsets.all(10),
                child: Container(
                  // color: Colors.blue[100 * (index % 9 + 1)],
                  height: 100,
                  width: 200,
                  // alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(_postList[index]["image"]),
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),

                  child: Text(
                    _postList[index]["text"],
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              );
            },
            childCount: _postList.length, // 1000 list items
          ),
        ),
      ],
    )
        /*  body: Column(
        children: [
          // Text("Tv Channel")
          SliverList(delegate: SliverChildBuilderDelegate(

            (BuildContext context, int index) {
              return  Card(
                child:Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/hollywood/dracula.jpg"),
                    fit:BoxFit.contain,
                    alignment: Alignment.topCenter)
                  ),
                  child:const Text("Flutter"),
                )
              );
            },
            childCount: _listWebSeries.length
          ))
        ],
      ), */
        );
  }
}
