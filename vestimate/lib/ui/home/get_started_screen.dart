import 'package:flutter/material.dart';
import 'package:vestimate/ui/home/login_page.dart';

class GetStartedScren extends StatefulWidget {
  const GetStartedScren({Key? key}) : super(key: key);

  @override
  State<GetStartedScren> createState() => _GetStartedScrenState();
}

class _GetStartedScrenState extends State<GetStartedScren> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/launcher.jpg"),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 600,
                  width: 600,
                  child: const Text('Planty',
                      style: TextStyle(
                          fontSize: 40,
                          color: Color.fromARGB(255, 214, 200, 200),
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text('Increase your natural beauty',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 214, 200, 200),
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, right: 15.0, left: 15.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 5, 46, 38),
                          padding: const EdgeInsets.all(25),
                          textStyle: const TextStyle(
                              fontSize: 17, color: Colors.black),
                          minimumSize: const Size.fromHeight(50.0)),
                      onPressed: () {
                        print("Sign Up!");
                      },
                      child: const Text("Sign Up")),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, right: 15.0, left: 15.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 5, 46, 38),
                          padding: const EdgeInsets.all(25),
                          textStyle: const TextStyle(
                              fontSize: 17, color: Colors.black),
                          minimumSize: const Size.fromHeight(50.0)),
                      onPressed: () {
                        //
                        Navigator.push(context,MaterialPageRoute(builder: ((context) => const LoginPage())));
                      },
                      child: const Text("Log In")),
                ),
              ],
            ),
          ),
        ));
    /*  return Scaffold(
        body: Column(
      children: [       
           
            const Text("Planty",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            const Text("Increase your Natural beauty",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 5, 46, 38),
                    padding: const EdgeInsets.all(25),
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.black),
                    minimumSize: const Size.fromHeight(50.0)),
                onPressed: () {
                  print("SignUp Button Clicked !");
                },
                child: Text("Sign Up")),
          ],
     
    )); */
  }
}
