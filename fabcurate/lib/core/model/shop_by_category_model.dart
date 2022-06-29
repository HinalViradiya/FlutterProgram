// To parse this JSON data, do
//
//     final shopByCategry = shopByCategryFromJson(jsonString);

import 'dart:convert';

ShopByCategry shopByCategryFromJson(String str) =>
    ShopByCategry.fromJson(json.decode(str));

String shopByCategryToJson(ShopByCategry data) => json.encode(data.toJson());

class ShopByCategry {
  ShopByCategry({
    required this.shopByCategory,
    required this.shopByFabric,
    required this.unstitched,
    required this.boutiqueCollection,
    required this.status,
    required this.message,
  });

  List<ShopBy> shopByCategory;
  List<ShopBy> shopByFabric;
  List<Unstitched> unstitched;
  List<BoutiqueCollection> boutiqueCollection;
  String status;
  String message;

  factory ShopByCategry.fromJson(Map<String, dynamic> json) => ShopByCategry(
        shopByCategory: List<ShopBy>.from(
            json["shop_by_category"].map((x) => ShopBy.fromJson(x))),
        shopByFabric: List<ShopBy>.from(
            json["shop_by_fabric"].map((x) => ShopBy.fromJson(x))),
        unstitched: List<Unstitched>.from(
            json["Unstitched"].map((x) => Unstitched.fromJson(x))),
        boutiqueCollection: List<BoutiqueCollection>.from(
            json["boutique_collection"]
                .map((x) => BoutiqueCollection.fromJson(x))),
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "shop_by_category":
            List<dynamic>.from(shopByCategory.map((x) => x.toJson())),
        "shop_by_fabric":
            List<dynamic>.from(shopByFabric.map((x) => x.toJson())),
        "Unstitched": List<dynamic>.from(unstitched.map((x) => x.toJson())),
        "boutique_collection":
            List<dynamic>.from(boutiqueCollection.map((x) => x.toJson())),
        "status": status,
        "message": message,
      };
}

class BoutiqueCollection {
  BoutiqueCollection({
    required this.bannerImage,
    required this.name,
    required this.cta,
    required this.bannerId,
  });

  String bannerImage;
  String name;
  String cta;
  String bannerId;

  factory BoutiqueCollection.fromJson(Map<String, dynamic> json) =>
      BoutiqueCollection(
        bannerImage: json["banner_image"],
        name: json["name"],
        cta: json["cta"],
        bannerId: json["banner_id"],
      );

  Map<String, dynamic> toJson() => {
        "banner_image": bannerImage,
        "name": name,
        "cta": cta,
        "banner_id": bannerId,
      };
}

class ShopBy {
  ShopBy({
    required this.categoryId,
    required this.name,
    required this.tintColor,
    required this.image,
    required this.sortOrder,
    required this.fabricId,
  });

  String categoryId;
  String name;
  String tintColor;
  String image;
  String sortOrder;
  String fabricId;

  factory ShopBy.fromJson(Map<String, dynamic> json) => ShopBy(
        categoryId: json["category_id"] ?? "",
        name: json["name"],
        tintColor: json["tint_color"] ?? "",
        image: json["image"],
        sortOrder: json["sort_order"],
        fabricId: json["fabric_id"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "category_id": categoryId,
        "name": name,
        "tint_color": tintColor,
        "image": image,
        "sort_order": sortOrder,
        "fabric_id": fabricId,
      };
}

class Unstitched {
  Unstitched({
    required this.rangeId,
    required this.name,
    required this.description,
    required this.image,
  });

  String rangeId;
  String name;
  String description;
  String image;

  factory Unstitched.fromJson(Map<String, dynamic> json) => Unstitched(
        rangeId: json["range_id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "range_id": rangeId,
        "name": name,
        "description": description,
        "image": image,
      };
}

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap;
    return reverseMap;
  }
}
