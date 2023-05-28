import 'package:easy_hotel/app/data/model/base_request.dart';

class AllOrdersRequestDto extends BaseRequest {
  AllOrdersRequestDto({
    this.branchId,
  });

  int? branchId;

  @override
  Map<String, dynamic> toJson() => {
    "branchId": branchId,
  };
}
