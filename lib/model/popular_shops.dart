// To parse this JSON data, do
//
//     final popularShops = popularShopsFromJson(jsonString);

import 'dart:convert';

PopularShops popularShopsFromJson(String str) =>
    PopularShops.fromJson(json.decode(str));

String popularShopsToJson(PopularShops data) => json.encode(data.toJson());

class PopularShops {
  PopularShops({
    this.msg,
    this.data,
    this.success,
  });

  String? msg;
  List<PopularShopsList>? data;
  bool? success;

  factory PopularShops.fromJson(Map<String, dynamic> json) => PopularShops(
        msg: json["msg"],
        data: List<PopularShopsList>.from(
            json["data"].map((x) => PopularShopsList.fromJson(x))),
        success: json["success"],
      );

  Map<String, dynamic> toJson() => {
        "msg": msg,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "success": success,
      };
}

class PopularShopsList {
  PopularShopsList({
    this.id,
    this.vendorId,
    this.name,
    this.image,
    this.logo,
    this.phone,
    this.isSameday,
    this.address,
    this.city,
    this.state,
    this.country,
    this.zipcode,
    this.lat,
    this.lang,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.distance,
    this.imagePath,
    this.vendorName,
    this.rate,
    this.totalReview,
  });

  int? id;
  String? vendorId;
  String? name;
  String? image;
  String? logo;
  String? phone;
  int? isSameday;
  String? address;
  String? city;
  String? state;
  String? country;
  String? zipcode;
  String? lat;
  String? lang;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  int? distance;
  String? imagePath;
  String? vendorName;
  String? rate;
  int? totalReview;

  factory PopularShopsList.fromJson(Map<String, dynamic> json) =>
      PopularShopsList(
        id: json["id"],
        vendorId: json["vendor_id"],
        name: json["name"],
        image: json["image"],
        logo: json["logo"],
        phone: json["phone"],
        isSameday: json["is_sameday"],
        address: json["address"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        zipcode: json["zipcode"],
        lat: json["lat"],
        lang: json["lang"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        distance: json["distance"],
        imagePath: json["imagePath"],
        vendorName: json["vendorName"],
        rate: json["rate"],
        totalReview: json["totalReview"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "vendor_id": vendorId,
        "name": name,
        "image": image,
        "logo": logo,
        "phone": phone,
        "is_sameday": isSameday,
        "address": address,
        "city": city,
        "state": state,
        "country": country,
        "zipcode": zipcode,
        "lat": lat,
        "lang": lang,
        "status": status,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
        "distance": distance,
        "imagePath": imagePath,
        "vendorName": vendorName,
        "rate": rate,
        "totalReview": totalReview,
      };
}
