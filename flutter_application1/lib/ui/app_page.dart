import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  bool isSwitched = false;var textValue = 'Switch is OFF';  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 86, 32, 162),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("App Setting"),
      ),
      body: Column(
        children: [
          Switch(
              value: isSwitched,
              onChanged: (value) {
                if (isSwitched == true) {
                  setState(() {
                    isSwitched = false;
                    textValue = "Switch is OFF";
                  });
                } else {
                  setState(() {
                    isSwitched = true;
                    textValue = "Switch is ON";
                  });
                }
              }),
              Text('$textValue', style: TextStyle(fontSize: 20),)  
        ],
      ),
    );
  }
}
