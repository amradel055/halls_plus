import 'package:easy_hotel/app/data/model/base_request.dart';

class ActiveOrdersRequestDto extends BaseRequest {
  ActiveOrdersRequestDto({
    this.branchId,
  });

  int? branchId;

  @override
  Map<String, dynamic> toJson() => {
    "branchId": branchId,
  };
}
