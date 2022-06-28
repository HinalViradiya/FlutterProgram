import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

void onClickTextButton() {
  print("Button Clicked");
}

class _page1State extends State<page1> {
  String istapped = '';
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                bottom: 8.0, left: 10.0, right: 1.0, top: 8.0),
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: 20,
                    backgroundColor: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: null,
              child: const Text('Disabled'),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              setState(() {
                istapped = 'ElevatedButton tapped';
              });
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.cyan),
                padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                textStyle: MaterialStateProperty.all(
                    const TextStyle(fontSize: 17, color: Colors.white,))),
            child: const Text("ElevatedButton"),
          ),
          const SizedBox(height: 10),
          TextButton(
            style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.blueAccent),
            ),
            onPressed: () {
              setState(() {
                istapped = 'Button tapped';
              });
            },
            child: const Text("TextButton"),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            istapped,
            textScaleFactor: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 10,left: 30),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "User name",
              prefixIcon: Icon(Icons.person),
              suffixIcon: Icon(Icons.abc),
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration:  const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?k=20&m=517188688&s=612x612&w=0&h=i38qBm2P-6V4vZVEaMy_TaTEaoCMkYhvLCysE7yJQ5Q="),fit: BoxFit.cover)
            ),
          ),

          const CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?k=20&m=517188688&s=612x612&w=0&h=i38qBm2P-6V4vZVEaMy_TaTEaoCMkYhvLCysE7yJQ5Q=",),)
        ],
      ),
    );
  }
}
