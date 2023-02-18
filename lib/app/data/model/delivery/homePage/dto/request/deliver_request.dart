import 'package:easy_hotel/app/data/model/base_request.dart';

class DeliverRequestDto extends BaseRequest {
  DeliverRequestDto({
    this.id,
    this.createdBy,
  });

  int? id;
  int? createdBy;

  @override
  Map<String, dynamic> toJson() => {
    "id": id,
    "createdBy": createdBy,
  };
}
