import 'package:easy_hotel/app/data/model/base_request.dart';

class DeliverFinishRequestDto extends BaseRequest {
  DeliverFinishRequestDto({
    this.id,
  });

  int? id;

  @override
  Map<String, dynamic> toJson() => {
    "id": id,
  };
}
