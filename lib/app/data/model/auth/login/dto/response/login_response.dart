import 'package:easy_hotel/app/data/model/base_request.dart';

// class LoginResponse{
//   LoginResponse({
//     // required this.accessToken,
//     // required this.tokenType,
//     // required this.expiresIn,
//     // required this.user,
//     required this.success,
//     required this.data,
//     required this.msg,
//     required this.code,
//     required this.pagination,
//   });
//
//   // final String accessToken;
//   // final String tokenType;
//   // final int? expiresIn;
//   // final User user;
//   final bool success;
//   final dynamic data;
//   final String code;
//   final String msg;
//   final dynamic pagination;
//
//
//   factory LoginResponse.fromJson(json) => LoginResponse(
//     // accessToken: json["access_token"],
//     // tokenType: json["token_type"],
//     // expiresIn: json["expires_in"],
//     // user: User.fromJson(json["user"]),
//     success: json["success"],
//     data: json["data"],
//     msg: json["msg"],
//     code: json["code"],
//     pagination: json["pagination"],
//   );
//
//   @override
//   Map<String, dynamic> toJson() => {
//     // "access_token": accessToken,
//     // "token_type": tokenType,
//     // "expires_in": expiresIn,
//     // "user": user.toJson(),
//     "success": success,
//     "data": data,
//     "msg": msg,
//     "code": code,
//     "pagination": pagination,
//   };
// }

// To parse this JSON data, do
//
//     final customer = customerFromJson(jsonString);



// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    this.id,
    this.markEdit,
    this.msg,
    this.msgType,
    this.markDisable,
    this.createdBy,
    this.createdDate,
    this.index,
    this.companyId,
    this.createdByName,
    this.branchId,
    this.deletedBy,
    this.deletedDate,
    this.igmaOwnerId,
    this.companyCode,
    this.branchSerial,
    this.igmaOwnerSerial,
    this.userCode,
    this.name,
    this.mobile,
    this.age,
    this.address,
    this.nationalNum,
    this.userName,
    this.password,
    this.remark,
  });

  int ?id;
  bool ?markEdit;
  dynamic msg;
  dynamic msgType;
  dynamic markDisable;
  int ?createdBy;
  String? createdDate;
  int ?index;
  dynamic companyId;
  dynamic createdByName;
  dynamic branchId;
  dynamic deletedBy;
  dynamic deletedDate;
  dynamic igmaOwnerId;
  dynamic companyCode;
  dynamic branchSerial;
  dynamic igmaOwnerSerial;
  dynamic userCode;
  String? name;
  String? mobile;
  int ?age;
  String? address;
  String ?nationalNum;
  String ?userName;
  String ?password;
  String ?remark;

  factory LoginResponse.fromJson( dynamic json) => LoginResponse(
    id: json["id"] == null ? null : json["id"],
    markEdit: json["markEdit"] == null ? null : json["markEdit"],
    msg: json["msg"],
    msgType: json["msgType"],
    markDisable: json["markDisable"],
    createdBy: json["createdBy"] == null ? null : json["createdBy"],
    createdDate: json["createdDate"] == null ? null : json["createdDate"],
    index: json["index"] == null ? null : json["index"],
    companyId: json["companyId"],
    createdByName: json["createdByName"],
    branchId: json["branchId"],
    deletedBy: json["deletedBy"],
    deletedDate: json["deletedDate"],
    igmaOwnerId: json["igmaOwnerId"],
    companyCode: json["companyCode"],
    branchSerial: json["branchSerial"],
    igmaOwnerSerial: json["igmaOwnerSerial"],
    userCode: json["userCode"],
    name: json["name"] == null ? null : json["name"],
    mobile: json["mobile"] == null ? null : json["mobile"],
    age: json["age"] == null ? null : json["age"],
    address: json["address"] == null ? null : json["address"],
    nationalNum: json["nationalNum"] == null ? null : json["nationalNum"],
    userName: json["userName"] == null ? null : json["userName"],
    password: json["password"] == null ? null : json["password"],
    remark: json["remark"] == null ? null : json["remark"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "markEdit": markEdit == null ? null : markEdit,
    "msg": msg,
    "msgType": msgType,
    "markDisable": markDisable,
    "createdBy": createdBy == null ? null : createdBy,
    "createdDate": createdDate == null ? null : createdDate,
    "index": index == null ? null : index,
    "companyId": companyId,
    "createdByName": createdByName,
    "branchId": branchId,
    "deletedBy": deletedBy,
    "deletedDate": deletedDate,
    "igmaOwnerId": igmaOwnerId,
    "companyCode": companyCode,
    "branchSerial": branchSerial,
    "igmaOwnerSerial": igmaOwnerSerial,
    "userCode": userCode,
    "name": name == null ? null : name,
    "mobile": mobile == null ? null : mobile,
    "age": age == null ? null : age,
    "address": address == null ? null : address,
    "nationalNum": nationalNum == null ? null : nationalNum,
    "userName": userName == null ? null : userName,
    "password": password == null ? null : password,
    "remark": remark == null ? null : remark,
  };
}
