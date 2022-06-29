import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../category/category_screen.dart';
import '../home/home_screen.dart';
import 'controller/base_controller.dart';

class BaseScreenView extends StatefulWidget {
  static const String routeName = "/baseScreen";

  const BaseScreenView({Key? key}) : super(key: key);

  @override
  State<BaseScreenView> createState() => _BaseScreenViewState();
}

class _BaseScreenViewState extends State<BaseScreenView> {
  final List<NavigationTabContainModel> navigationTabList = [
    NavigationTabContainModel(icon: "assets/images/tab_home.png", name: "HOME"),
    NavigationTabContainModel(
        icon: "assets/images/tab_category.png", name: "CATEGORY"),
    NavigationTabContainModel(
        icon: "assets/images/tab_curate.png", name: "CURATE"),
    NavigationTabContainModel(icon: "assets/images/tab_sale.png", name: "SALE"),
    NavigationTabContainModel(icon: "assets/images/tab_more.png", name: "MORE"),
  ];

  List<Widget> navigationScreens = [
    const HomeScreen(),
    const CategoryScreen(),
    const Center(child: Text("CURATE")),
    const Center(child: Text("SALE")),
    const Center(child: Text("MORE")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: GetBuilder(
          builder: (BaseController controller) => IndexedStack(
            index: controller.selectedTab,
            children: navigationScreens,
          ),
        ),
      ),
      bottomNavigationBar: bottomBar(context),
    );
  }

  BottomAppBar bottomBar(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      elevation: 3,
      child: GetBuilder(
        builder: (BaseController controller) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: navigationTabList
              .asMap()
              .map(
                (key, value) => MapEntry(
                  key,
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.find<BaseController>().selectedTab = key;
                      },
                      child: Container(
                        color: Colors.transparent,
                        height: 55,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  const SizedBox(height: 5),
                                  SizedBox(
                                      height: 25,
                                      width: 25,
                                      child: Image.asset(value.icon,
                                          color: controller.selectedTab == key
                                              ? const Color(0xff9db240)
                                              : const Color(0xffA7A7A7))),
                                  const SizedBox(height: 5),
                                  Text(value.name,
                                      maxLines: 1,
                                      style: TextStyle(
                                        color: controller.selectedTab == key
                                            ? const Color(0xff9db240)
                                            : const Color(0xffA7A7A7),
                                      ),
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
              .values
              .toList(),
        ),
      ),
    );
  }
}

class NavigationTabContainModel {
  final String icon;
  String name;

  NavigationTabContainModel({required this.icon, required this.name});
}
