import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/themes/app_text_theme.dart';
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


class SpaInfoWidget extends GetView<HomeController> {
  const SpaInfoWidget( {Key? key})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Obx(() {
      return SizedBox(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                for(int i = 0; i < controller.activeOrders.length; i ++)
                  orderContainer(
                      true,
                      controller.activeOrders[i].invoiceNumber??0,
                      controller.activeOrders[i].customerId??0,
                      controller.activeOrders[i].invoiceNumber??0,
                      controller.activeOrders[i].customerName ??"",
                      controller.activeOrders[i].address,
                      null),

              ],
            ),
          )
      );
    });
  }

}

