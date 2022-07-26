import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hotstar_app/model/Arguments.dart';
import 'package:hotstar_app/screen/detail_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int _selectedIndex = 0;
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

  final List<Map<String, dynamic>> _listMapMovie = [
    {
      "image": "assets/hollywood/dracula.jpg",
      "name": "Dracula",
      "video": "https://www.youtube.com/watch?v=_2aWqecTTuE",
      "time": "1 hr 57 min",
      "lang": "English"
    },
    {
      "image": "assets/hollywood/gijoe.jpg",
      "name": "Gijoe",
      "video": "https://www.youtube.com/watch?v=_2aWqecTTuE",
      "time": "2 hr 30 min",
      "lang": "English,Hindi"
    },
    {
      "image": "assets/hollywood/ironMan.jpg",
      "name": "IronMan",
      "video": "https://www.youtube.com/watch?v=8ugaeA-nMTc",
      "time": "1 hr 00 min",
      "lang": "English,Hindi"
    },
    {
      "image": "assets/hollywood/major.jpg",
      "name": "Major",
      "video": "https://www.youtube.com/watch?v=PAv1Ke07QAM",
      "time": "1 hr 00 min",
      "lang": "English,Hindi"
    },
    {
      "image": "assets/hollywood/mortal.jpg",
      "name": "Mortal",
      "video": "https://www.youtube.com/watch?v=PAv1Ke07QAM",
      "time": "1 hr 00 min",
      "lang": "Hindi"
    },
    {
      "image": "assets/hollywood/peak.jpg",
      "name": "Peak",
      "video": "https://www.youtube.com/watch?v=PAv1Ke07QAM",
      "time": "3 hr 10 min",
      "lang": "English"
    },
    {
      "image": "assets/hollywood/rogue.jpg",
      "name": "Rogue",
      "video":"https://www.youtube.com/watch?v=PAv1Ke07QAM",
      "time": "2 hr 30 min",
      "lang": "English,Hindi"
    },
    {
      "image": "assets/hollywood/thor.jpg",
      "name": "Thor",
      "video":"https://www.youtube.com/watch?v=Go8nTmfrQd8",
      "time": "2 hr 30 min",
      "lang": "English,Hindi"
    },
    {
      "image": "assets/hollywood/train.jpg",
      "name": "Train",
      "video":"https://www.youtube.com/watch?v=Go8nTmfrQd8",
      "time": "3 hr 30 min",
      "lang": "English,Hindi"
    },
  ];

  final List<String> _listPost = [
    "assets/post/s1.jpg",
    "assets/post/s2.jpg",
    "assets/post/s3.jpg",
    "assets/post/s4.jpg",
    "assets/post/s5.jpg",
  ];

  final List<Map<String, dynamic>> _mapPost = [
    {
      "image": "assets/post/s1.jpg",
      "name": "Ashiqina",
      "vedio": "https://www.hotstar.com/in/aashiqana-trailer/1260104508",
      "time": "1 hr 57 min",
      "lang": "Hindi"
    },
    {
      "image": "assets/post/s2.jpg",
      "name": "Once upon a Time",
      "vedio": "https://www.youtube.com/watch?v=29217uc7fOo",
      "time": "3 hr 05 min",
      "lang": "English"
    },
    {
      "image": "assets/post/s3.jpg",
      "name": "DareDevil Marvel",
      "vedio": "https://www.youtube.com/watch?v=jAy6NJ_D5vU",
      "time": "2 hr 30 min",
      "lang": "English,Hindi"
    },
    {
      "image": "assets/post/s4.jpg",
      "name": "The Maze Runner",
      "vedio": "https://www.youtube.com/watch?v=AwwbhhjQ9Xk",
      "time": "2 hr 45 min",
      "lang": "English"
    },
    {
      "image": "assets/post/s5.jpg",
      "name": "Beauty And The Beast 4K",
      "vedio": "https://www.youtube.com/watch?v=e3Nl_TCQXuw",
      "time": "3 hr 30 min",
      "lang": "English,Hindi"
    }
  ];

  /*
{"image": "assets/post/s1.jpg",
"name":"Beauty And The Beast 4K",
"vedio":"https://www.youtube.com/watch?v=e3Nl_TCQXuw"},





*/

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
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 700),
                autoPlayCurve: Curves.fastOutSlowIn,
                //  enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: _mapPost.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          DetailPage.routeName,
                          arguments: Arguments(i["name"], i["image"],
                              i["vedio"], i["time"], i["lang"]),
                        );
                      },
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          // margin: EdgeInsets.symmetric(horizontal: 5.0),
                          // decoration: BoxDecoration(color: Colors.white),
                          child: Image.asset(i["image"], fit: BoxFit.fill)
                          //AssetImage("assets/images/launcher.jpg"),
                          ),
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
                itemCount: _listMapMovie.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  width: 6,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        DetailPage.routeName,
                        arguments: Arguments(_listMapMovie[index]["name"],
                            _listMapMovie[index]["image"], _listMapMovie[index]["video"],_listMapMovie[index]["time"], _listMapMovie[index]["lang"]),
                      );
                    },
                    child: SizedBox(
                      width: width * 0.30,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image(
                              image: AssetImage(_listMapMovie[index]["image"]),
                              fit: BoxFit.cover)),
                    ),
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
                    return SizedBox(
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
