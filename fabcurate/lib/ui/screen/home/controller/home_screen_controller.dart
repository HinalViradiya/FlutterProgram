import 'package:get/get.dart';

import '../../../../core/model/shop_by_category_model.dart';

class HomeScreenController extends GetxController {
  //TODO: Implement HomeScreenController
  @override
  void onInit() {
    /// Calling top,Middle, bottom Api Here
    for (var i = 0; i < 4; i++) {
      data.add(Unstitched(
        description: "Demo",
        image:
            "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80",
        name: "Image",
        rangeId: "1",
      ));
    }
    super.onInit();
  }

  List<Unstitched> data = [];
}
