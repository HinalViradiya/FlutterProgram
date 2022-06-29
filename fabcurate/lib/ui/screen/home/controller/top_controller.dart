import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

import '../../../../core/model/main_sticky_menu_model.dart';
import '../../../../core/service/api_routes.dart';

class TopController extends GetxController {
  @override
  void onInit() {
    topData();
    super.onInit();
  }

  List<MainStickyMenu> _mainStickyMenuData = [];

  List<MainStickyMenu> get mainStickyMenuData => _mainStickyMenuData;

  set mainStickyMenuData(List<MainStickyMenu> value) {
    _mainStickyMenuData = value;
    update();
  }

  /// Handling top Api here
  Future<List<MainStickyMenu>?> topData() async {
    dio.Response res = await apiProvider.getAPICall(ApiRoutes.getHomeTopDataUrl);
    var data = MainStickyMenuModel.fromJson(res.data);
    mainStickyMenuData = data.mainStickyMenu;
    return data.mainStickyMenu;
  }
}
