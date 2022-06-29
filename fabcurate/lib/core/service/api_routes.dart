import '../../main.dart';
import 'api_provider.dart';

class ApiRoutes {
  static String baseUrl = "https://fabcurate.easternts.in/";
  static String getHomeTopDataUrl = "top.json";
  static String getHomeMiddleDataUrl = "middle.json";
  static String getHomeBottomDataUrl = "bottom.json";
  static String getCategoryUrl = "category.json";
}

APIProvider apiProvider = sl<APIProvider>();
