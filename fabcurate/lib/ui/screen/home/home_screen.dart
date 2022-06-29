import 'package:carousel_slider/carousel_slider.dart';
import 'package:fabcurate/core/constant.dart';
import 'package:fabcurate/ui/screen/home/controller/bottom_controller.dart';
import 'package:fabcurate/ui/screen/home/controller/middle_controller.dart';
import 'package:fabcurate/ui/screen/home/controller/top_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_3d/gallery3d.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import 'controller/home_screen_controller.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/homeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenController homeScreenController = Get.find<HomeScreenController>();
  TopController topController = Get.find<TopController>();
  MiddleController middleController = Get.find<MiddleController>();
  BottomController bottomController = Get.find<BottomController>();
  List subImageTop = [], substring = [];
  final CarouselController _controller = CarouselController();
  int _current = 0, indicatorIndex = 0;
  late List<Widget> imageSliders = [];
  final double circleRadius = 120.0;
  bool isLoading = false;

  Future loadData() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 3), () {});
    setState(() {
      isLoading = false;
    });
  }

  List colors = [
    const Color(0xffffdec0),
    const Color(0xffeddff5),
    const Color(0xffe3cdc8),
    const Color(0xffe3a8ac)
  ];

  @override
  void initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  menuData(),
                  shopByCategory(),
                  shopByFabricMaterial(),
                  unStitched(),
                  boutiqueCollection(),
                  rangeOfPattern(),
                  designAsPerOccasion(),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  Widget buildGallery3D(unStitchedData) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Gallery3D(
          itemCount: unStitchedData.length,
          width: MediaQuery.of(context).size.width,
          height: 400,
          isClip: false,
          itemConfig: const GalleryItemConfig(
            width: 270,
            height: 380,
            radius: 0,
            isShowTransformMask: false,
          ),
          currentIndex: _current,
          onItemChanged: (index) {
            setState(() {
              _current = index;
            });
          },
          itemBuilder: (context, index) {
            return Center(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Image.network(unStitchedData[index].image,
                      fit: BoxFit.cover, width: 270),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.1),
                              Colors.black.withOpacity(0.2),
                              Colors.black.withOpacity(0.3),
                              Colors.black.withOpacity(0.4),
                            ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            '${unStitchedData[index].description}'
                                .toUpperCase(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.anekLatin(
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 70,
                        color: Colors.black.withOpacity(0.8),
                        child: Center(
                          child: isLoading
                              ? textShimmer()
                              : Text(
                                  '${unStitchedData[index].name}'.toUpperCase(),
                                  style: GoogleFonts.anekLatin(
                                    textStyle: const TextStyle(
                                        fontSize: 28,
                                        color: Color(0xFF4FC3F7),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }

  Widget appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/images/logo_title.png", scale: 3),
        Row(
          children: [
            const ImageIcon(
              AssetImage("assets/images/ic_search.png"),
              color: Colors.grey,
            ),
            const ImageIcon(
              AssetImage("assets/images/ic_cart.png"),
              color: Colors.grey,
            ).paddingSymmetric(horizontal: 15),
          ],
        )
      ],
    );
  }

  Widget menuData() {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        children: [
          SizedBox(
            height: 130,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: topController.mainStickyMenuData.length,
                itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        // Handing onTap on Top
                        subImageTop.clear();
                        for (var i = 0;
                            i <
                                topController.mainStickyMenuData[index]
                                    .sliderImages!.length;
                            i++) {
                          subImageTop.add(topController
                              .mainStickyMenuData[index]
                              .sliderImages![i]
                              .image);
                          substring.add(topController.mainStickyMenuData[index]
                              .sliderImages![i].title);
                        }
                        setState(() {
                          subImageTop;
                          imageSliders = topController
                              .mainStickyMenuData[index].sliderImages!
                              .map((item) => Container(
                                    margin: const EdgeInsets.all(5.0),
                                    child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5.0)),
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: <Widget>[
                                            Image.network(item.image,
                                                fit: BoxFit.cover,
                                                width: 1000.0),
                                            Container(
                                                height: 40,
                                                width: double.infinity,
                                                color: colors[topController
                                                    .mainStickyMenuData[index]
                                                    .sliderImages!
                                                    .indexOf(item)]),
                                            Positioned(
                                              bottom: 20.0,
                                              left: 40.0,
                                              right: 40.0,
                                              child: Container(
                                                color: Colors.white,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10.0,
                                                        horizontal: 20.0),
                                                child: Text(
                                                  item.title,
                                                  style: const TextStyle(
                                                    color: AppColors.textGrey,
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                  ))
                              .toList();
                        });
                      },
                      child: Card(
                        child: Container(
                          width: 155,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.white),
                          child: Column(
                            children: [
                              isLoading
                                  ? fabricShimmer()
                                  : ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(3),
                                          topRight: Radius.circular(3)),
                                      child: Image.network(
                                          topController
                                              .mainStickyMenuData[index].image,
                                          fit: BoxFit.cover),
                                    ),
                              Center(
                                child: isLoading
                                    ? textShimmer()
                                    : SizedBox(
                                        height: 30,
                                        child: Center(
                                          child: Text(
                                            topController
                                                .mainStickyMenuData[index]
                                                .title,
                                            style: GoogleFonts.anekLatin(
                                                textStyle: const TextStyle(
                                                    color: AppColors.textGrey,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14)),
                                          ).paddingOnly(top: 5),
                                        ),
                                      ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
          ),
          imageSliders.isEmpty ? Container() : buildFirstSlider(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget fabricShimmer() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(.1),
        highlightColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Image.asset("assets/images/tab_home.png",
              height: 80, fit: BoxFit.cover, scale: 1.5),
        ),
      ),
    );
  }

  Widget textShimmer() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4, top: 5),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(.1),
        highlightColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
              width: 120,
              height: 20,
              decoration: const BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
                  color: Color(0xff394448))),
        ),
      ),
    );
  }

  Widget smallTextShimmer() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(.1),
        highlightColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
              width: 80,
              height: 10,
              decoration: const BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
                  color: Color(0xff394448))),
        ),
      ),
    );
  }

  Widget shopCategoryShimmer() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(.1),
        highlightColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/tab_home.png"),
                    scale: 1.5)),
          ),
        ),
      ),
    );
  }

  Widget rangePatternShimmer() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(.1),
        highlightColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/tab_home.png"))),
          ),
        ),
      ),
    );
  }

  Widget buildFirstSlider() {
    return CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imageSliders);
  }

  Widget shopByCategory() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Shop By Category",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ).paddingSymmetric(horizontal: 10),
        const SizedBox(height: 10),
        SizedBox(
          height: 280,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: middleController.shopByCategory.length,
              itemBuilder: (context, index) {
                return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: isLoading
                          ? shopCategoryShimmer()
                          : Image.network(
                              middleController.shopByCategory[index].image,
                              fit: BoxFit.cover),
                    ),
                    Container(
                      height: 52,
                      color: hexToColor(
                              middleController.shopByCategory[index].tintColor)
                          .withOpacity(0.9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 5),
                          SizedBox(
                            width: double.infinity,
                            child: isLoading
                                ? textShimmer()
                                : splitText(middleController
                                    .shopByCategory[index].name
                                    .toUpperCase()),

                            // Text(
                            //         homeScreenController.shopByCategory[index].name
                            //             .toUpperCase(),
                            //         style: GoogleFonts.rubik(
                            //             textStyle: const TextStyle(
                            //                 fontWeight: FontWeight.w500,
                            //                 fontSize: 10)),
                            //       ).paddingOnly(top: 10),
                          ),
                          const Spacer(),
                          isLoading
                              ? smallTextShimmer()
                              : Text(
                                  "+EXPLORE",
                                  style: GoogleFonts.rubik(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8)),
                                ),
                          const SizedBox(height: 5)
                        ],
                      ).paddingSymmetric(horizontal: 8),
                    )
                  ],
                );
              },
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget shopByFabricMaterial() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Shop By Fabric Material",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ).paddingSymmetric(horizontal: 10),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SizedBox(
            height: 330,
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: middleController.shopByCategory.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        isLoading
                            ? rangePatternShimmer()
                            : Image.network(
                                middleController.shopByCategory[index].image),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.2),
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.8),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Center(
                              child: SizedBox(
                                width: 80,
                                child: isLoading
                                    ? textShimmer()
                                    : Text(
                                        middleController
                                            .shopByCategory[index].name,
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget unStitched() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Unstitched",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18))
            .paddingSymmetric(horizontal: 10),
        const SizedBox(height: 10),
        buildGallery3D(middleController.unstitchedData.isEmpty
            ? homeScreenController.data
            : middleController.unstitchedData),
      ],
    );
  }

  Widget boutiqueCollection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Boutique Collection",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20))
            .paddingSymmetric(horizontal: 10),
        const SizedBox(height: 10),
        CarouselSlider(
          items: middleController.boutiqueCollectionData
              .map((item) => Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Center(
                          child: Image.network(item.bannerImage,
                              fit: BoxFit.cover,
                              height:
                                  MediaQuery.of(context).size.height / 1.6)),
                      Container(
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                              Colors.black.withOpacity(0.4),
                              Colors.black.withOpacity(0.6),
                              Colors.black.withOpacity(0.8),
                              Colors.black.withOpacity(0.9),
                            ])),
                        //color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              splitSecondText(item.name),
                              // Text(
                              //   item.name,
                              //   textAlign: TextAlign.left,
                              //   style: const TextStyle(
                              //     color: Colors.white,
                              //     fontSize: 28,
                              //   ),
                              // ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "+EXPLORE",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ))
              .toList(),
          carouselController: _controller,
          options: CarouselOptions(
              height: MediaQuery.of(context).size.height / 1.6,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {
                setState(() {
                  indicatorIndex = index;
                });
              }),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: middleController.boutiqueCollectionData
              .asMap()
              .entries
              .map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(indicatorIndex == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget rangeOfPattern() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Range Of Pattern",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ).paddingSymmetric(horizontal: 10),
          const SizedBox(height: 10),
          SizedBox(
            height: 330,
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: bottomController.rangeOfPatternData.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        isLoading
                            ? rangePatternShimmer()
                            : Image.network(bottomController
                                .rangeOfPatternData[index].image),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.2),
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.8),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Center(
                              child: SizedBox(
                                width: 80,
                                child: isLoading
                                    ? textShimmer()
                                    : Text(
                                        bottomController
                                            .rangeOfPatternData[index].name,
                                        maxLines: 2,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget designAsPerOccasion() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Design As Per Occasion",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ).paddingSymmetric(horizontal: 10),
        const SizedBox(height: 10),
        SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 3),
            itemCount: bottomController.designOccasionData.length,
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        isLoading
                            ? fabricShimmer()
                            : Image.network(
                                bottomController
                                    .designOccasionData[index].image,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width / 2,
                              ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.white.withOpacity(0.9),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: isLoading
                                  ? smallTextShimmer()
                                  : Text(
                                      bottomController
                                          .designOccasionData[index].name
                                          .toUpperCase(),
                                      style: GoogleFonts.rubik(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 8)),
                                    ).paddingOnly(top: 5)),
                          isLoading
                              ? smallTextShimmer()
                              : Row(
                                  children: [
                                    Text(
                                      bottomController
                                          .designOccasionData[index].subName
                                          .toUpperCase(),
                                      style: GoogleFonts.rubik(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 8)),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "+EXPLORE",
                                      style: GoogleFonts.rubik(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 6)),
                                    ),
                                  ],
                                )
                        ],
                      ).paddingSymmetric(horizontal: 5),
                    ),
                  )
                ],
              );
            },
          ),
        ).paddingSymmetric(horizontal: 10),
      ],
    );
  }

  RichText splitText(String text) {
    String? testString = text;
    List<String> parts = testString.split(" ");
    List<String> data = parts;
    data.removeAt(0);
    List<String> data1 = data;
    final String str = data1.join(" ");
    return RichText(
      text: TextSpan(
        text: data[0],
        style: const TextStyle(color: Colors.black38, fontSize: 12),
        children: <TextSpan>[
          const TextSpan(
              text: " ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  fontSize: 10)),
          TextSpan(
              text: str,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.7))),
        ],
      ),
    );
  }

  RichText splitSecondText(String text) {
    String? testString = text;
    List<String> parts = testString.split("for");
    return RichText(
      text: TextSpan(
        text: parts[0].toUpperCase(),
        style: const TextStyle(color: Colors.white, fontSize: 22),
        children: <TextSpan>[
          const TextSpan(
              text: " FOR ",
              style: TextStyle(color: Colors.white, fontSize: 22)),
          TextSpan(
              text: parts[1].toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22)),
        ],
      ),
    );
  }
}
