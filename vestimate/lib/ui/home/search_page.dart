import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List icons1 = [
    Icons.cake,
    Icons.add_location_sharp,
    Icons.zoom_in_outlined,
    Icons.auto_awesome_motion,
    Icons.call_end_sharp,
    Icons.cake,
    Icons.add_location_sharp,
    Icons.zoom_in_outlined,
    Icons.auto_awesome_motion,
    Icons.call_end_sharp,
  ];
  final List<String> imagesList = [
    'assets/images/plant1.png',
    'assets/images/plant2.png',
    'assets/images/plant3.png',
    'assets/images/plant4.png',
    'assets/images/plant5.png',
    'assets/images/plant6.png',
    'assets/images/plant7.png',
    'assets/images/plant8.png',
    'assets/images/plant9.png',
    'assets/images/plant10.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
        const Text(
          'Headline',
          style: TextStyle(fontSize: 18),
        ),
        //   Expanded(
        Container(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagesList.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) => Card(
                color: Colors.white,
                child: Image.asset(imagesList[index],
                    fit: BoxFit.cover),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10)),
          ),
        ),
      ]),
      /*  body: Column(
        children: [
           Expanded(
           
         child:  Container(
          // margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
           child: ListView.builder(
             scrollDirection:Axis.horizontal,
               itemCount: icons1.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: Icon(icons1[index]),
                 /*  title: Text(
                    icons1[index].toString(),
                    style: const TextStyle(color: Colors.green, fontSize: 28),
                  ), */
                  
                );
                
              })),
         ))
        ],
      ), */
    );
  }
}
