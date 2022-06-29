import 'dart:convert';

MainStickyMenuModel mainStickyMenuModelFromJson(String str) =>
    MainStickyMenuModel.fromJson(json.decode(str));

String mainStickyMenuModelToJson(MainStickyMenuModel data) =>
    json.encode(data.toJson());

class MainStickyMenuModel {
  MainStickyMenuModel({
    required this.mainStickyMenu,
    required this.status,
    required this.message,
  });

  List<MainStickyMenu> mainStickyMenu;
  String status;
  String message;

  factory MainStickyMenuModel.fromJson(Map<String, dynamic> json) =>
      MainStickyMenuModel(
        mainStickyMenu: List<MainStickyMenu>.from(
            json["main_sticky_menu"].map((x) => MainStickyMenu.fromJson(x))),
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "main_sticky_menu":
            List<dynamic>.from(mainStickyMenu.map((x) => x.toJson())),
        "status": status,
        "message": message,
      };
}

class MainStickyMenu {
  MainStickyMenu({
    required this.title,
    required this.image,
    required this.sortOrder,
    required this.sliderImages,
    required this.cta,
  });

  String title;
  String image;
  String sortOrder;
  List<MainStickyMenu>? sliderImages;
  String cta;

  factory MainStickyMenu.fromJson(Map<String, dynamic> json) => MainStickyMenu(
        title: json["title"],
        image: json["image"],
        sortOrder: json["sort_order"],
        sliderImages: json["slider_images"] == null
            ? null
            : List<MainStickyMenu>.from(
                json["slider_images"].map((x) => MainStickyMenu.fromJson(x))),
        cta: json["cta"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "image": image,
        "sort_order": sortOrder,
        "slider_images": sliderImages == null
            ? null
            : List<dynamic>.from(sliderImages!.map((x) => x.toJson())),
        "cta": cta,
      };
}
