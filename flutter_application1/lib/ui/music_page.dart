import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    List list = [
      "C",
      "C++",
      "Dart",
      "Flutter",
      "Html",
    ];
    List icons1 = [
      Icons.cake,
      Icons.add_location_sharp,
      Icons.zoom_in_outlined,
      Icons.auto_awesome_motion,
      Icons.call_end_sharp,
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 86, 32, 162),
          title: const Text("Music"),
        ),
        body: Column(
          children: [
            Expanded(
                child:
                //  ListView.separated(
                //     itemBuilder: (context, index) {
                //       return ListTile(
                //         leading: Icon(icons1[index]),
                //         title: Text(
                //           list[index],
                //           style: const TextStyle(
                //               color: Colors.green, fontSize: 28),
                //         ),
                //       );
                //     },
                //     separatorBuilder: (context, index) {
                //       return Divider();
                //     },
                //     itemCount: icons1.length)

                ListView.builder(
                    itemCount: icons1.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(icons1[index]),
                        title: Text(
                          list[index],
                          style:
                              const TextStyle(color: Colors.green, fontSize: 28),
                        ),
                      );
                    }),
                ),
            Row(
              children: const [
                Flexible(
                  child: Text(
                    "bgeberbvgerhwehjrthj hnjkhjkhjkhjkhjk",
                    style: TextStyle(backgroundColor: Colors.grey),
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Text(
                    "reshma",
                    style: TextStyle(backgroundColor: Colors.grey),
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Text(
                    "abd",
                    style: TextStyle(backgroundColor: Colors.grey),
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    _box();
                  });
                },
                icon: const Icon(Icons.person))
          ],
        ));
  }

  _box() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert!!"),
          content: const Text("You are awesome!"),
          actions: <Widget>[
            FlatButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
