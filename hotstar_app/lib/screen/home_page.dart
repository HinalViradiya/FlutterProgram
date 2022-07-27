
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hotstar_app/model/datamodel.dart';
import 'package:hotstar_app/model/userlist.dart';
import 'package:hotstar_app/screen/detail_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/HomePage';
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   List<User> items = [];

 @override
  void initState() {
    items = UserList.getUserDetails();
    super.initState();
  }

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
      "video": "https://www.youtube.com/watch?v=bd3JmlIxQXM",
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
      "video": "https://www.youtube.com/watch?v=aqQwPeivH-Y",
      "time": "1 hr 00 min",
      "lang": "Hindi"
    },
    {
      "image": "assets/hollywood/peak.jpg",
      "name": "Peak",
      "video": "https://www.youtube.com/watch?v=KGi_1KrbsXc",
      "time": "3 hr 10 min",
      "lang": "English"
    },
    {
      "image": "assets/hollywood/rogue.jpg",
      "name": "Rogue",
      "video":"https://www.youtube.com/watch?v=IpSK2CsKULg",
      "time": "2 hr 30 min",
      "lang": "English,Hindi"
    },
    {
      "image": "assets/hollywood/thor.jpg",
      "name": "Thor",
      "video":"https://www.youtube.com/watch?v=Go8nTmfrQd8&t=3s",
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

 /*  final List<Map<String, dynamic>> _mapPost = [
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
 */

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
   // CarouselController buttonCarouselController = CarouselController();

    return Scaffold(   
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
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
              items: items.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                       /*  Navigator.pushNamed(
                          context,
                          DetailPage.routeName,
                          arguments: Arguments(i["name"], i["image"],
                              i["vedio"], i["time"], i["lang"]),
                        ); */
                        print("Home Page ::: $i.image");
                         Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => DetailPage(user: i)),));
                      },
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(i.image!, fit: BoxFit.fill)
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
                  return SizedBox(
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
                    /*   Navigator.pushNamed(
                        context,
                        DetailPage.routeName,
                        arguments: Arguments(_listMapMovie[index]["name"],
                            _listMapMovie[index]["image"], _listMapMovie[index]["video"],_listMapMovie[index]["time"], _listMapMovie[index]["lang"]),
                      ); */
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
