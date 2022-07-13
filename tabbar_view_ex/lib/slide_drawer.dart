import 'package:flutter/material.dart';

class SideDrawerPage extends StatefulWidget {
  const SideDrawerPage({Key? key}) : super(key: key);

  @override
  State<SideDrawerPage> createState() => _SideDrawerPageState();
}

class _SideDrawerPageState extends State<SideDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(child: Drawer(
        child: ListView(
          children: [
           const  UserAccountsDrawerHeader(
              accountName: Text("Hinal Akbari"),
              accountEmail: Text("Hinal.android@gmail.com"),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2022/07/04/08/54/building-7300734_960_720.jpg"),),
            ),
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home_outlined),
              onTap: () => Navigator.pushReplacementNamed(context, "Home"),
            ),
            ListTile(
              title: const Text("Video"),
              leading: const Icon(Icons.personal_video),
              onTap: () => Navigator.pushNamed(context, "Video"),
            ),
            ListTile(
              title: const Text("Setting"),
              leading: const Icon(Icons.settings),
              onTap: () => Navigator.pushNamed(context, "Setting"),
            )
          ],
        ),
      ),
    ),);
  }
}
