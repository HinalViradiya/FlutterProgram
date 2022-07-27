import 'package:flutter/material.dart';
import 'package:hotstar_app/model/datamodel.dart';
import 'package:hotstar_app/model/userlist.dart';
import 'package:hotstar_app/screen/home_page.dart';
import 'package:hotstar_app/screen/movie_page.dart';
import 'package:hotstar_app/screen/port_folio_subpage.dart';
import 'package:hotstar_app/screen/tv_page.dart';

class Dashboard extends StatefulWidget {
  
  static const routeName = '/DashBoardPage';
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
   
  int _selectedIndex = 0;
    bool _switch = false;
    List<User> items = UserList.getUserDetails();

    final List<Widget> _tabs =[const HomePage(),const TVPage(),const MoviePage(),const GallerySubPage()];
   
    @override
    void initState() {   
        super.initState();
    }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 3.0, top: 22.0),
              child: ListTile(
                leading: Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.transparent,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: const Image(
                          image: AssetImage("assets/images/7.jpeg"),
                          fit: BoxFit.fill)),
                ),
                title: const Text("Login",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                subtitle: const Text("For a better experience",
                    style: TextStyle(color: Colors.white, fontSize: 11)),
                trailing: const Icon(Icons.arrow_forward_ios_rounded,size: 19,),
              ),
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: RichText(
                      text: const TextSpan(
                        text: '',
                        style: TextStyle(fontSize: 12),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Kids ',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "marvin-round",
                                  color: Color.fromARGB(255, 222, 152, 31))),
                          TextSpan(
                              text: 'Safe',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 222, 152, 31))),
                        ],
                      ),
                    )

                    // Text("Kids Safe",
                    //     style: TextStyle(fontFamily: "marvin-round",color: Color.fromARGB(255, 215, 188, 36)))),
                    ),
                const Spacer(),
                Switch(
                    value: _switch,
                    onChanged: (value) {
                      setState(() {
                        _switch = value;
                      });
                    }),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  const Icon(Icons.download_for_offline_rounded),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Downloads",
                            style: TextStyle(
                                color: Color.fromARGB(255, 217, 214, 214),
                                fontSize: 17)),
                        Text("watch videos offline",
                            style: TextStyle(
                                color: Color.fromARGB(255, 129, 125, 125),
                                fontSize: 13))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
              child: Row(
                children: <Widget>[
                  const Icon(Icons.playlist_add_circle_sharp),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Watchlist",
                            style: TextStyle(
                                color: Color.fromARGB(255, 217, 214, 214),
                                fontSize: 17)),
                        Text("save to watch later",
                            style: TextStyle(
                                color: Color.fromARGB(255, 129, 125, 125),
                                fontSize: 13))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                children: <Widget>[
                  const Icon(Icons.wallet_giftcard),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Prizes",
                            style: TextStyle(
                                color: Color.fromARGB(255, 217, 214, 214),
                                fontSize: 17)),
                        Text("Prizes you have won",
                            style: TextStyle(
                                color: Color.fromARGB(255, 129, 125, 125),
                                fontSize: 13))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Icon(Icons.support_agent),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text("Channels",
                        style: TextStyle(
                            color: Color.fromARGB(255, 217, 214, 214),
                            fontSize: 17)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Icon(Icons.local_dining),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Languages",
                        style: TextStyle(
                            color: Color.fromARGB(255, 217, 214, 214),
                            fontSize: 17)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 20.0, top: 10),
              child: Row(
                children: const [
                  Icon(Icons.accessibility_new_outlined),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Genres",
                        style: TextStyle(
                            color: Color.fromARGB(255, 217, 214, 214),
                            fontSize: 17)),
                  )
                ],
              ),
            ),
            const Divider(
              height: 2,
              color: Color.fromARGB(255, 111, 107, 107),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 10.0, top: 10),
              child: Row(
                children: const [
                  Icon(Icons.settings),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Preferences",
                        style: TextStyle(
                            color: Color.fromARGB(255, 217, 214, 214),
                            fontSize: 17)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 10.0, top: 10),
              child: Row(
                children: const [
                  Icon(Icons.help_outlined),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Help",
                        style: TextStyle(
                            color: Color.fromARGB(255, 217, 214, 214),
                            fontSize: 17)),
                  )
                ],
              ),
            ),
            const Divider(
              height: 2,
              color: Color.fromARGB(255, 111, 107, 107),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Disney Hotstar"),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        iconSize: 20,       
        items:const <BottomNavigationBarItem>[
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'TV',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie), 
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_cricket_rounded),
            label: 'Sports',
          ),
        ],
      
        type: BottomNavigationBarType.shifting, // default is shifting (fixed)
       // elevation: 4,
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color.fromARGB(255, 239, 236, 232),
        onTap: (index)=> setState(() {
          _selectedIndex =index;
         // Navigator.pushNamed(context,DetailPage.routeName );           
        }),
      ),
   
    );
  }
}