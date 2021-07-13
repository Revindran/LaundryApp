import 'dart:convert';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    this.error,
    this.msg,
    this.data,
    this.success,
  });

  String? error;
  String? msg;
  LoginData? data;
  bool? success;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        error: json["error"],
        msg: json["msg"],
        data: LoginData.fromJson(json["data"]),
        success: json["success"],
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "msg": msg,
        "data": data!.toJson(),
        "success": success,
      };
}

class LoginData {
  LoginData({
    this.id,
    this.name,
    this.email,
    this.image,
    this.status,
    this.otp,
    this.code,
    this.phone,
    this.verify,
    this.createdBy,
    this.deviceToken,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.token,
    this.imagePath,
    this.roles,
  });

  int? id;
  String? name;
  String? email;
  String? image;
  int? status;
  dynamic otp;
  String? code;
  String? phone;
  int? verify;
  String? createdBy;
  dynamic deviceToken;
  dynamic emailVerifiedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? token;
  String? imagePath;
  List<Role>? roles;

  factory LoginData.fromJson(Map<String, dynamic> json) => LoginData(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        image: json["image"],
        status: json["status"],
        otp: json["otp"],
        code: json["code"],
        phone: json["phone"],
        verify: json["verify"],
        createdBy: json["created_by"],
        deviceToken: json["device_token"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        token: json["token"],
        imagePath: json["imagePath"],
        roles: List<Role>.from(json["roles"].map((x) => Role.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "image": image,
        "status": status,
        "otp": otp,
        "code": code,
        "phone": phone,
        "verify": verify,
        "created_by": createdBy,
        "device_token": deviceToken,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
        "token": token,
        "imagePath": imagePath,
        "roles": List<dynamic>.from(roles!.map((x) => x.toJson())),
      };
}

class Role {
  Role({
    this.id,
    this.title,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  int? id;
  String? title;
  DateTime? createdAt;
  DateTime? updatedAt;
  RolesPivot? pivot;

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        id: json["id"],
        title: json["title"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        pivot: RolesPivot.fromJson(json["pivot"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "pivot": pivot!.toJson(),
      };
}

class RolesPivot {
  RolesPivot({
    this.userId,
    this.roleId,
  });

  String? userId;
  String? roleId;

  factory RolesPivot.fromJson(Map<String, dynamic> json) => RolesPivot(
        userId: json["user_id"],
        roleId: json["role_id"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "role_id": roleId,
      };
}
