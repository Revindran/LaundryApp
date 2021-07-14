import 'dart:convert';

import 'base_response.dart';

AllServices allServicesFromJson(String str) =>
    AllServices.fromJson(json.decode(str));

String allServicesToJson(AllServices data) => json.encode(data.toJson());

class AllServices extends BaseResponse {
  AllServices({
    this.msg,
    this.data,
    this.success,
  });

  String? msg;
  List<ServicesListModel>? data;
  bool? success;

  factory AllServices.fromJson(Map<String, dynamic> json) => AllServices(
        msg: json["msg"],
        data: List<ServicesListModel>.from(
            json["data"].map((x) => ServicesListModel.fromJson(x))),
        success: json["success"],
      );

  Map<String, dynamic> toJson() => {
        "msg": msg,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "success": success,
      };
}

class ServicesListModel {
  ServicesListModel({
    this.id,
    this.name,
    this.image,
    this.price,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.imagePath,
    this.mainPrice,
  });

  int? id;
  String? name;
  String? image;
  String? price;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? imagePath;
  dynamic mainPrice;

  factory ServicesListModel.fromJson(Map<String, dynamic> json) =>
      ServicesListModel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        price: json["price"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        imagePath: json["imagePath"],
        mainPrice: json["mainPrice"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "price": price,
        "status": status,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
        "imagePath": imagePath,
        "mainPrice": mainPrice,
      };
}
