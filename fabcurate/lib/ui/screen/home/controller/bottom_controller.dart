import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

import '../../../../core/model/bottom_data_model.dart';
import '../../../../core/model/main_sticky_menu_model.dart';
import '../../../../core/service/api_routes.dart';

class BottomController extends GetxController {
  @override
  void onInit() {
    bottomData();
    super.onInit();
  }

  List<RangeOfPattern> _rangeOfPatternData = [];

  List<RangeOfPattern> get rangeOfPatternData => _rangeOfPatternData;

  set rangeOfPatternData(List<RangeOfPattern> value) {
    _rangeOfPatternData = value;
    update();
  }

  List<DesignOccasion> _designOccasionData = [];

  List<DesignOccasion> get designOccasionData => _designOccasionData;

  set designOccasionData(List<DesignOccasion> value) {
    _designOccasionData = value;
    update();
  }

  /// Handling bottom Api here
  Future<List<MainStickyMenu>?> bottomData() async {
    dio.Response res = await apiProvider.getAPICall(ApiRoutes.getHomeBottomDataUrl);
    var data = BottomDataModel.fromJson(res.data);
    rangeOfPatternData = data.rangeOfPattern;
    designOccasionData = data.designOccasion;
    return null;
  }
}
