import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

import '../../../../core/model/category_data_model.dart';
import '../../../../core/service/api_routes.dart';

class CategoryViewController extends GetxController {
  //TODO: Implement CategoryViewController

  final count = 0.obs;
  @override
  void onInit() {
    /// Calling Category Api Here
    categoryData();
    super.onInit();
  }

  List<Category> _categories = [];

  List<Category> get categories => _categories;

  set categories(List<Category> value) {
    _categories = value;
    update();
  }

  /// Handling Category Api Here
  Future<List<CategoryDataModel>?> categoryData() async {
    dio.Response res = await apiProvider.getAPICall(ApiRoutes.getCategoryUrl);
    var data = CategoryDataModel.fromJson(res.data);
    categories = data.categories;
    return null;
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
