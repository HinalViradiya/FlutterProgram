import 'package:flutter/material.dart';

class TabBarView extends StatefulWidget {
  const TabBarView({Key? key}) : super(key: key);

  @override
  State<TabBarView> createState() => _TabBarViewState();
}

class _TabBarViewState extends State<TabBarView> {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
body: TabBarView(
  
),
      ),
    );
  }
}
