import 'package:fabcurate/ui/screen/base_screen/base_screen.dart';
import 'package:fabcurate/ui/screen/category/category_screen.dart';
import 'package:get/get.dart';

import '../../ui/screen/home/home_screen.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(name: HomeScreen.routeName, page: () => const HomeScreen()),
  GetPage(name: BaseScreenView.routeName, page: () => const BaseScreenView()),
  GetPage(name: CategoryScreen.routeName, page: () => const CategoryScreen()),
];
