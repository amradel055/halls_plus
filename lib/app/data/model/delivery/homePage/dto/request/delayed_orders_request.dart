import 'package:easy_hotel/app/data/model/base_request.dart';

class DelayOrdersRequestDto extends BaseRequest {
  DelayOrdersRequestDto({
    this.finishBy,
  });

  int? finishBy;

  @override
  Map<String, dynamic> toJson() => {
    "finishBy": finishBy,
  };
}
