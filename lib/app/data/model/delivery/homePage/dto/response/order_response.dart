// To parse this JSON data, do
//
//     final polmanOrder = polmanOrderFromJson(jsonString);

import 'dart:convert';

PolmanOrder polmanOrderFromJson(String str) => PolmanOrder.fromJson(json.decode(str));

String polmanOrderToJson(PolmanOrder data) => json.encode(data.toJson());

class PolmanOrder {
  PolmanOrder({
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
    this.customerId,
    this.customerName,
    this.time,
    this.finishBy,
    this.finishName,
    this.startDate,
    this.finishDate,
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
  int ?customerId;
  String? customerName;
  dynamic time;
  dynamic finishBy;
  dynamic finishName;
  dynamic startDate;
  dynamic finishDate;
  static List<PolmanOrder> fromList(dynamic json) => List.from(json.map((e) => PolmanOrder.fromJson(e)));


  factory PolmanOrder.fromJson(Map<String, dynamic> json) => PolmanOrder(
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
    customerId: json["customerId"] == null ? null : json["customerId"],
    customerName: json["customerName"] == null ? null : json["customerName"],
    time: json["time"],
    finishBy: json["finishBy"],
    finishName: json["finishName"],
    startDate: json["startDate"],
    finishDate: json["finishDate"],
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
    "customerId": customerId == null ? null : customerId,
    "customerName": customerName == null ? null : customerName,
    "time": time,
    "finishBy": finishBy,
    "finishName": finishName,
    "startDate": startDate,
    "finishDate": finishDate,
  };
}
