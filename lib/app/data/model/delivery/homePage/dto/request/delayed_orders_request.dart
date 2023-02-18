import 'package:easy_hotel/app/data/model/base_request.dart';

class DelayOrdersRequestDto extends BaseRequest {
  DelayOrdersRequestDto({
    this.branchId,
    this.finishBy,
  });

  int? branchId;
  int? finishBy;

  @override
  Map<String, dynamic> toJson() => {
    "branchId": branchId,
    "finishBy": finishBy,
  };
}
