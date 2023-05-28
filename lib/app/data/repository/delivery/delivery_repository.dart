import 'package:easy_hotel/app/data/model/auth/login/dto/request/login_request.dart';
import 'package:easy_hotel/app/data/model/auth/login/dto/response/login_response.dart';

import 'package:easy_hotel/app/data/model/base_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/active_orders_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/all_orders_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/delayed_orders_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/deliver_finish_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/deliver_orders_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/deliver_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/response/order_response.dart';
import 'package:easy_hotel/app/data/provider/api_provider.dart';

class DeliveryRepository {





  getAllOrders(
      AllOrdersRequestDto allOrdersRequestDto, {
        Function()? onComplete,
        SuccessFunc<List<PolmanOrder>> onSuccess,
        Function(dynamic error)? onError,
      }) =>
      ApiProvider().post<List<PolmanOrder>>('halls/allOrdersHalls',
        onComplete: onComplete,
        onSuccess: onSuccess,
        data: allOrdersRequestDto.toJson(),
        onError: onError,
        convertor: PolmanOrder.fromList,
      );

}
