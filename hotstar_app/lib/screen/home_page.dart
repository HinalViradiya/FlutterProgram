import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   // final height = MediaQuery.of(context).size.height;
   // final width = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text("Disney Hotstar"),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: Column(
          children: <Widget>[
            /*   Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "Latest & Trending",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ))
            ],
          ), */

              Row(
                children: [
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: const <Widget>[
                      ListTile(leading: Icon(Icons.accessibility_rounded),
                      title: Text("Flutter"),),
                      ListTile(leading: Icon(Icons.accessibility_rounded),
                      title: Text("Flutter 2"),),
                  
                    ],
                  ),
                ],
              )
             ],
        ));

            /*  return const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      tileColor: Color.fromARGB(255, 133, 204, 242),
                      leading: Icon(Icons.account_box),
                      title: Text(
                        "Flutter Widget Of Week 3",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(Icons.arrow_circle_down),
                      subtitle: Text("Subtitle"),
                      isThreeLine: true,
                      dense: true,
                    ),
                  ); */
       

    /*  Expanded(
            child: Container(
              width: 300,
              height: 400,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                 shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    //return const Text("Flutter",style: TextStyle(color: Colors.white),);
                    return Padding(
            padding:  EdgeInsets.all(10.0),
            child: ListTile(
                      tileColor: Color.fromARGB(255, 133, 204, 242),
                        leading: Icon(Icons.account_box),
                        title: Text("Flutter Widget Of Week 3",style: TextStyle(color: Colors.white),),
                        trailing: Icon(Icons.arrow_circle_down),
                        subtitle: Text("Subtitle"),
                        isThreeLine: true,
                        dense: true,
                      ),
          );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(height: 2,),
                  itemCount: 5),
            ),
          ), */
  }
}
