import 'package:flutter/material.dart';
import 'package:flutter_application1/custom/multi_selection_widget.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  String dropDownValue = "Avatar(2010)";

  var movies = [
    'Avatar(2010)',
    'Inception(2010)',
    'Spider-Man(2021)',
    'No Time To Die(2021)',
    'Parasite(2020)'
  ];

  List<String> _selectedItems = [];
  void _showMultiSelect() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> _items = [
      'Flutter',
      'Node.js',
      'React Native',
      'Java',
      'Docker',
      'MySQL'
    ];
    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelected(items: _items);
      },
    );
    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems = results;
      });
    }
  }

  //List<String> uniquelist = movie_name.where((country) => seen.add(country)).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 86, 32, 162),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Movie"),
      ),
      body: Column(
        children: [          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 86, 32, 162),
                  // border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.57), blurRadius: 5)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: DropdownButton<String>(
                    value: dropDownValue,
                    items: movies.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        dropDownValue = value.toString();
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    iconSize: 42,
                    isExpanded:
                        true, // its expand to parent widget(full screen)
              
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    dropdownColor: const Color.fromARGB(255, 86, 32, 162),
                    iconEnabledColor: Color.fromARGB(255, 99, 47, 171)),
              ),
            ),
          ),

          // To add Multi selection Widgets
          ElevatedButton(
            child: const Text('Select Languages'),
            onPressed: _showMultiSelect,
          ),
          const Divider(
            height: 30,
          ),
          // display selected items
          // Wrap(
          //   children: _selectedItems
          //       .map((e) => Chip(
          //             label: Text(e),
          //           ))
          //       .toList(),
          // )
        ],
      ),
    );
  }
}
/*
TO ADD DIRECT MAP INSIDE VALUES PROPERTY
              <String>[
              'Avatar',
              'Inception',
              'Spider-Man',
              'No Time To Die',
              'Parasite'
            ].map((String value) {              
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(), */