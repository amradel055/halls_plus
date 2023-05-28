import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/core/utils/user_manager.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/active_orders_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/all_orders_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/delayed_orders_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/deliver_finish_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/deliver_orders_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/deliver_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/response/order_response.dart';
import 'package:easy_hotel/app/data/repository/delivery/delivery_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  RxInt  index = 0.obs;
  RxInt  serviceIndex = 0.obs;
  RxInt selectedType = 1.obs;
  final isLoading = false.obs;

  final allOrders = <PolmanOrder>[].obs;





   @override
  void onInit() {
    super.onInit();
    getAllOrders();


  }



   getAllOrders() async {
     isLoading(true);
     final request = AllOrdersRequestDto(
         branchId: UserManager().user!.branchId,


     );
     DeliveryRepository().getAllOrders(request,
         onSuccess: (data) {
           allOrders.assignAll(data.data);
         },
         onError: (e) => showPopupText( e.toString()),
         onComplete: () => isLoading(false)
     );
   }



   // filter(String num){
   //
   //   delayedOrders.value = List<PolmanOrder>.from(allDelayedOrders.where((element) => element.customerName!.contains(num)).toList());
   //
   // }


}
