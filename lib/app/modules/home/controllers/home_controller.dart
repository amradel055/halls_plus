import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/core/utils/user_manager.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/data/model/spa/dto/request/spa_detail_request_dto.dart';
import 'package:easy_hotel/app/data/model/spa/dto/request/spa_save_request.dart';
import 'package:easy_hotel/app/data/model/spa/dto/response/spa_response_dto.dart';
import 'package:easy_hotel/app/data/repository/spa/spa_repository.dart';
import 'package:get/get.dart';

class SpaDetailsController extends GetxController {

  final int id = Get.arguments;
   RxInt  index = 1.obs;
  RxInt  serviceIndex = 0.obs;
  RxInt selectedType = 1.obs;
  SpaResponse? spa ;
  final isLoading = false.obs;
  final servicesSelected = <int>[].obs;



   @override
  void onInit() {
    super.onInit();
    getSpaDetail();


  }


  getSpaDetail() async {
    isLoading(true);
    final request = SpaDetailRequest(
      id:id ,

    );
    SpaRepository().getSpaDetail(request,
        onSuccess: (data) {
          spa=data.data;

        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }

   getSpaSave() async {
     isLoading(true);
     final request = SpaSaveRequest(
       spaId:spa!.id! ,
       spaItemDTOList: servicesSelected,
       salesDetailSpaItemDTOList: [],
       companyId: AppConstants.companyId,
       createdBy: AppConstants.createdBy,
       customerId: UserManager().user!.id,
       branchId: spa!.branchId,
     );
     SpaRepository().getSpaSave(request,
         onSuccess: (data) {
           showPopupText( "تم الحفظ بنجاح");
         },
         onError: (e) => showPopupText( e.toString()),
         onComplete: () => isLoading(false)
     );
   }



}
