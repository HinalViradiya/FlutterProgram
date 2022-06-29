import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import 'widget/custom_expansion_tile.dart';
import 'controller/category_view_controller.dart';

class CategoryScreen extends StatefulWidget {
  static const String routeName = "/categoryScreen";

  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<Color> colorsDetail = [
    const Color(0xFFFBE7C6),
    const Color(0xFFB2D7DA),
    const Color(0xFFFFD898),
    const Color(0xFFFBE7C6)
  ];
  bool isExpand = false;
  List<Color> colorsDetail1 = [
    const Color(0xFFCDD193),
    const Color(0xFFA0E7E5),
    const Color(0xFFFCB5AC),
    const Color(0xFFB99095)
  ];
  CategoryViewController categoryViewController = CategoryViewController();
  Future loadData() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 5), () {});
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    loadData();
    super.initState();
  }

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          appBar(),
          categoryView(),
        ],
      )),
    );
  }

  Widget appBar() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(height: 15),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 1),
          const Text(""),
          const Text("Category",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
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
      ),
      const SizedBox(height: 15),
    ]);
  }

  Widget categoryView() {
    return Expanded(
      child:
          GetBuilder(builder: (CategoryViewController categoryViewController) {
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: categoryViewController.categories.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return isLoading
                ? shopCategoryShimmer()
                : Stack(
                    alignment: Alignment.center,
                    children: [
                      // demoDesign(index),
                      CustomExpansionTile(
                        childrenPadding: EdgeInsets.zero,
                        backgroundColor: colorsDetail1[index],
                        onExpansionChanged: (bool isExapnd) {
                          setState(() {
                            isExpand = isExapnd;
                          });
                        },
                        tilePadding: EdgeInsets.zero,
                        title: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            categoryDesign(index),
                            Text(
                              "  ${categoryViewController.categories[index].categoryName}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        children: [
                          ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: categoryViewController
                                .categories[index].child?.length,
                            shrinkWrap: true,
                            itemBuilder: (context, i) {
                              return ListTile(
                                contentPadding: EdgeInsets.zero,
                                minVerticalPadding: 1,
                                title: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    categoryDesign(index),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0.0),
                                      child: Text(
                                        "  ${categoryViewController.categories[index].child![i].categoryName}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ],
                  );
          },
        );
      }),
    );
  }

// Handling Background Design of Category
  Widget categoryDesign(int index) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 7,
          width: double.infinity,
          decoration: BoxDecoration(
            color: colorsDetail1[index],
          ),
        ),
        ClipPath(
          clipper: OvalBorderClipper(),
          child: Container(
              height: MediaQuery.of(context).size.height / 7,
              width: MediaQuery.of(context).size.width / 1.8,
              decoration:
                  BoxDecoration(color: colorsDetail[index], boxShadow: const [
                BoxShadow(
                    color: Colors.black, blurRadius: 50, offset: Offset(0, 5)),
              ])),
        ),
      ],
    );
  }

// Handling Shimmer
  Widget shopCategoryShimmer() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(.1),
        highlightColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 5)
                ],
                color: const Color(0xff394448),
                borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ),
    );
  }
}

// Handling circle in Category Design
class OvalBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 20, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height / 2);
    path.quadraticBezierTo(size.width, size.height - (size.height / 4),
        size.width - 20, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
