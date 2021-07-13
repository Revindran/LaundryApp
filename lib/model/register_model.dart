import 'dart:convert';

RegisterResponse registerResponseFromJson(String str) =>
    RegisterResponse.fromJson(json.decode(str));

String registerResponseToJson(RegisterResponse data) =>
    json.encode(data.toJson());

class RegisterResponse {
  RegisterResponse({
    this.success,
    this.data,
    this.message,
  });

  bool? success;
  RegistrationData? data;
  String? message;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      RegisterResponse(
        success: json["success"],
        data: RegistrationData.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data!.toJson(),
        "message": message,
      };
}

class RegistrationData {
  RegistrationData({
    this.name,
    this.email,
    this.code,
    this.phone,
    this.verify,
    this.updatedAt,
    this.createdAt,
    this.id,
    this.token,
    this.imagePath,
  });

  String? name;
  String? email;
  String? code;
  String? phone;
  int? verify;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;
  String? token;
  String? imagePath;

  factory RegistrationData.fromJson(Map<String, dynamic> json) =>
      RegistrationData(
        name: json["name"],
        email: json["email"],
        code: json["code"],
        phone: json["phone"],
        verify: json["verify"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
        token: json["token"],
        imagePath: json["imagePath"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "code": code,
        "phone": phone,
        "verify": verify,
        "updated_at": updatedAt!.toIso8601String(),
        "created_at": createdAt!.toIso8601String(),
        "id": id,
        "token": token,
        "imagePath": imagePath,
      };
}
