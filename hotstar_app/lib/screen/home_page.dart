import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<String> _imagesList = [
    "assets/images/1.jpeg",
    "assets/images/2.jpeg",
    "assets/images/3.jpeg",
    "assets/images/4.jpeg",
    "assets/images/5.jpeg",
    "assets/images/6.jpeg",
    "assets/images/7.jpeg",
    "assets/images/8.jpeg",
    "assets/images/9.jpeg",
  ];

  final List<String> _listLatestWallpaper = [
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

  final List<String> _listPost = [
    "assets/post/s1.jpg",
    "assets/post/s2.jpg",
    "assets/post/s3.jpg",
    "assets/post/s4.jpg",
    "assets/post/s5.jpg",
  ];

  

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    CarouselController buttonCarouselController = CarouselController();

    return Scaffold(
      /* drawer: Drawer(
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
      */
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: const Image(
                      image: AssetImage("assets/post/poster.jpg"),
                      fit: BoxFit.cover)),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: height * 0.24,
                // aspectRatio: 20 / 9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 700),
                autoPlayCurve: Curves.fastOutSlowIn,
                //  enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: _listPost.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,

                        // margin: EdgeInsets.symmetric(horizontal: 5.0),
                        // decoration: BoxDecoration(color: Colors.white),
                        child: Image.asset(i, fit: BoxFit.fill)

                        //AssetImage("assets/images/launcher.jpg"),

                        );
                  },
                );
              }).toList(),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Latest & Trending",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    ))
              ],
            ),
            Container(
              color: Colors.transparent,
              height: height * 0.21,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: _imagesList.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  width: 6,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: width * 0.30,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image(
                            image: AssetImage(_imagesList[index]),
                            fit: BoxFit.cover)),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Popular Movies",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              color: Colors.transparent,
              height: height * 0.21,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: _listLatestWallpaper.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  width: 6,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: width * 0.30,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image(
                            image: AssetImage(_listLatestWallpaper[index]),
                            fit: BoxFit.cover)),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Movies Recommended For You",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                color: Colors.transparent,
                height: height * 0.11,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: _imagesList.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 6,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return  SizedBox(
                      width: width * 0.30,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image(
                              image: AssetImage(_imagesList[index]),
                              fit: BoxFit.fill)),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
     
     /*  bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,       
        items:const   <BottomNavigationBarItem>[
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
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting, // default is shifting (fixed)
        elevation: 4,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color.fromARGB(255, 239, 236, 232),
        onTap: (index)=> setState(() {
          _selectedIndex =index;
        }),
      ),
     */
    );
  }
}
