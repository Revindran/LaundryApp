// To parse this JSON data, do
//
//     final promotions = promotionsFromJson(jsonString);

import 'dart:convert';

Promotions promotionsFromJson(String str) =>
    Promotions.fromJson(json.decode(str));

String promotionsToJson(Promotions data) => json.encode(data.toJson());

class Promotions {
  Promotions({
    this.msg,
    this.data,
    this.success,
  });

  String? msg;
  List<OffersList>? data;
  bool? success;

  factory Promotions.fromJson(Map<String, dynamic> json) => Promotions(
        msg: json["msg"],
        data: List<OffersList>.from(json["data"].map((x) => OffersList.fromJson(x))),
        success: json["success"],
      );

  Map<String, dynamic> toJson() => {
        "msg": msg,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "success": success,
      };
}

class OffersList {
  OffersList({
    this.id,
    this.title1,
    this.title2,
    this.image,
    this.discount,
    this.type,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.imagePath,
  });

  int? id;
  String? title1;
  String? title2;
  String? image;
  String? discount;
  String? type;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? imagePath;

  factory OffersList.fromJson(Map<String, dynamic> json) => OffersList(
        id: json["id"],
        title1: json["title1"],
        title2: json["title2"],
        image: json["image"],
        discount: json["discount"],
        type: json["type"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        imagePath: json["imagePath"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title1": title1,
        "title2": title2,
        "image": image,
        "discount": discount,
        "type": type,
        "status": status,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
        "imagePath": imagePath,
      };
}
