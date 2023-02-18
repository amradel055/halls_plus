import 'package:easy_hotel/app/data/model/base_request.dart';

class ActiveOrdersRequestDto extends BaseRequest {
  ActiveOrdersRequestDto({
    this.branchId,
    this.finishBy,
    this.spaId,
  });

  int? branchId;
  int? finishBy;
  int? spaId;

  @override
  Map<String, dynamic> toJson() => {
    "branchId": branchId,
    "finishBy": finishBy,
    "spaId": spaId,
  };
}
