import 'package:easy_hotel/app/components/app_overlay_loading.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/utils/common.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/spa/spa_detail/views/widgets/bar_widget.dart';
import 'package:easy_hotel/app/modules/spa/spa_detail/views/widgets/spa_images_Widget.dart';

import 'package:easy_hotel/app/modules/spa/spa_detail/views/widgets/spa_review_widget.dart';

import 'package:easy_hotel/app/modules/spa/spa_detail/views/widgets/spa_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'widgets/filter_bar.dart';
import 'widgets/spa_info_widget.dart';

class SpaDetailView extends GetView<HomeController> {
  const SpaDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          title: TextWidget('DETAILS', size: 30.h,textColor: Colors.white,),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.black87,
                      Colors.black87,
                      Colors.black.withOpacity(.7),
                      Colors.black.withOpacity(.6),
                      Colors.transparent
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
          centerTitle: true,
        ),
        body: Obx(() {
          if(controller.isLoading.value){
            return Center(
              child: Common.getSpin(),
            );
          }
          return ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 300.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppAssets.salon),
                        fit: BoxFit.cover)),

                padding: EdgeInsets.fromLTRB(50.h, 120.h, 50.h, 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextWidget(controller.spa!.name!, size: 20.h,
                      weight: FontWeight.bold,
                      textColor: Colors.white,),
                    TextWidget(
                        controller.spa!.cityName!,
                        textColor: Colors.white,
                        weight: FontWeight.bold),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.yellowAccent,),
                        const TextWidget(
                            '3.5    (130 مراجعة)', textColor: Colors.white,
                            weight: FontWeight.bold),
                        Padding(
                          padding: EdgeInsets.only(left: size.width * .3),
                          child: Container(
                            height: size.height * 0.05,
                            width: size.width * 0.15,
                            decoration: BoxDecoration(
                              color: AppColors.appHallsRedDark,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(size.width * 0.05)),
                            ),
                            child:  TextWidget(
                              controller.spa!.activeName!, textAlign: TextAlign.center,
                              weight: FontWeight.bold,
                              textColor: Colors.white,),
                          ),
                        ),
                      ],
                    )
                  ],
                ),


              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const FilterBarWidgets(
                    title: AppStrings.information, index: 0,),
                  const FilterBarWidgets(
                    title: AppStrings.services, index: 1,),
                  const FilterBarWidgets(title: AppStrings.photos, index: 2,),
                  const FilterBarWidgets(title: AppStrings.reviews, index: 3,)
                ],),

              Container(
                height: size.height * .002, color: AppColors.appHallsRedDark,
              ),
              Obx(() {
                return [
                  SpaInfoWidget(
                     controller.spa!.discription ?? "",
                     controller.spa!.cityName ?? "",
                     controller.spa!.address ?? ""),
                  SpaServices(),
                  SpaImagesShow(),
                  SpaReviewsWidget()
                ][controller.index.value];
              })


            ],
          );
        })
    );
  }

}
