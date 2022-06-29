import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

import '../../../../core/model/main_sticky_menu_model.dart';
import '../../../../core/model/shop_by_category_model.dart';
import '../../../../core/service/api_routes.dart';

class MiddleController extends GetxController {
  @override
  void onInit() {
    middleData();
    super.onInit();
  }

  List<ShopBy> _shopByCategory = [];

  List<ShopBy> get shopByCategory => _shopByCategory;

  set shopByCategory(List<ShopBy> value) {
    _shopByCategory = value;
    update();
  }

  List<ShopBy> _shopByFabric = [];

  List<ShopBy> get shopByFabric => _shopByFabric;

  set shopByFabric(List<ShopBy> value) {
    _shopByFabric = value;
    update();
  }

  List<Unstitched> _unstitchedData = [];

  List<Unstitched> get unstitchedData => _unstitchedData;

  set unstitchedData(List<Unstitched> value) {
    _unstitchedData = value;
    update();
  }

  List<BoutiqueCollection> _boutiqueCollectionData = [];

  List<BoutiqueCollection> get boutiqueCollectionData =>
      _boutiqueCollectionData;

  set boutiqueCollectionData(List<BoutiqueCollection> value) {
    _boutiqueCollectionData = value;
    update();
  }

  /// Handling middle Api here
  Future<List<MainStickyMenu>?> middleData() async {
    dio.Response res = await apiProvider.getAPICall(ApiRoutes.getHomeMiddleDataUrl);
    var data = ShopByCategry.fromJson(res.data);
    shopByCategory = data.shopByCategory;
    shopByFabric = data.shopByFabric;
    unstitchedData = data.unstitched;
    boutiqueCollectionData = data.boutiqueCollection;
    return null;
  }
}
