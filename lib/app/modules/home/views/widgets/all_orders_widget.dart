import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/themes/app_text_theme.dart';
import 'package:easy_hotel/app/core/utils/common.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/home/controllers/home_controller.dart';
import 'package:easy_hotel/app/modules/home/views/widgets/order_container.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';


class AllOrdersWidget extends GetView<HomeController> {
  const AllOrdersWidget({Key? key})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Obx(() {
      if (controller.isLoading.value) {
        return Center(
          child: Common.getSpin(),
        );
      }
      return SizedBox(
          width: size.width,
          child: Obx(() {
            return Column(
              children: [
                for(int i = 0; i < controller.allOrders.length; i ++)
                  OrderContainer(
                      false,
                      controller.allOrders[i].id.toString() ?? "0",
                      controller.allOrders[i].customerId ?? 0,
                      controller.allOrders[i].id.toString() ?? "0",
                      controller.allOrders[i].customerName ?? "",
                      controller.allOrders[i].id.toString(),
                      i),

              ],
            );
          })
      );
    });
  }

}

