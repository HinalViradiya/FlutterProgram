import 'package:fabcurate/ui/screen/base_screen/controller/base_controller.dart';
import 'package:fabcurate/ui/screen/home/controller/bottom_controller.dart';
import 'package:fabcurate/ui/screen/home/controller/home_screen_controller.dart';
import 'package:fabcurate/ui/screen/home/controller/middle_controller.dart';
import 'package:fabcurate/ui/screen/home/controller/top_controller.dart';
import 'package:get/get.dart';

import '../../ui/screen/category/controller/category_view_controller.dart';

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseController>(() => BaseController(), fenix: true);
    Get.lazyPut<TopController>(() => TopController(), fenix: true);
    Get.lazyPut<MiddleController>(() => MiddleController(), fenix: true);
    Get.lazyPut<BottomController>(() => BottomController(), fenix: true);
    Get.lazyPut<CategoryViewController>(() => CategoryViewController(),
        fenix: true);
    Get.lazyPut<HomeScreenController>(() => HomeScreenController(),
        fenix: true);
  }
}
