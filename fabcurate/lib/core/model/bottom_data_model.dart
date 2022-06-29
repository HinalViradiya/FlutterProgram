import 'dart:convert';

BottomDataModel bottomDataModelFromJson(String str) =>
    BottomDataModel.fromJson(json.decode(str));

String bottomDataModelToJson(BottomDataModel data) =>
    json.encode(data.toJson());

class BottomDataModel {
  BottomDataModel({
    required this.rangeOfPattern,
    required this.designOccasion,
    required this.status,
    required this.message,
  });

  List<RangeOfPattern> rangeOfPattern;
  List<DesignOccasion> designOccasion;
  String status;
  String message;

  factory BottomDataModel.fromJson(Map<String, dynamic> json) =>
      BottomDataModel(
        rangeOfPattern: List<RangeOfPattern>.from(
            json["range_of_pattern"].map((x) => RangeOfPattern.fromJson(x))),
        designOccasion: List<DesignOccasion>.from(
            json["design_occasion"].map((x) => DesignOccasion.fromJson(x))),
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "range_of_pattern":
            List<dynamic>.from(rangeOfPattern.map((x) => x.toJson())),
        "design_occasion":
            List<dynamic>.from(designOccasion.map((x) => x.toJson())),
        "status": status,
        "message": message,
      };
}

class DesignOccasion {
  DesignOccasion({
    required this.productId,
    required this.name,
    required this.image,
    required this.subName,
    required this.cta,
  });

  String productId;
  String name;
  String image;
  String subName;
  String cta;

  factory DesignOccasion.fromJson(Map<String, dynamic> json) => DesignOccasion(
        productId: json["product_id"],
        name: json["name"],
        image: json["image"],
        subName: json["sub_name"],
        cta: json["cta"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "name": name,
        "image": image,
        "sub_name": subName,
        "cta": cta,
      };
}

class RangeOfPattern {
  RangeOfPattern({
    required this.productId,
    required this.image,
    required this.name,
  });

  String productId;
  String image;
  String name;

  factory RangeOfPattern.fromJson(Map<String, dynamic> json) => RangeOfPattern(
        productId: json["product_id"],
        image: json["image"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "image": image,
        "name": name,
      };
}
