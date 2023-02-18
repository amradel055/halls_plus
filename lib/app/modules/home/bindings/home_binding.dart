import 'package:easy_hotel/app/modules/spa/spa_detail/controllers/spa_details_controller.dart';
import 'package:get/get.dart';


class SpaDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpaDetailsController>(
      () => SpaDetailsController(),
    );
  }
}
