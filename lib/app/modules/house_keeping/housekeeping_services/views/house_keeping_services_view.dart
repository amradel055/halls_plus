import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_hotel/app/components/icon_button_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/modules/house_keeping/housekeeping_services/views/widgets/price_services.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/house_keeping_services_controller.dart';

class HouseKeepingServicesView extends GetView<HouseKeepingServicesController> {
  const HouseKeepingServicesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
        body: Directionality(textDirection: TextDirection.rtl,
          child: Stack(children: [
            Positioned(
              top: 0,
              height: size.height * .4,
              right: 0,
              left: 0,
              child: Container(
                decoration: const  BoxDecoration(
                    image: DecorationImage(
                        image: CachedNetworkImageProvider('https://image.shutterstock.com/image-photo/group-friends-professional-cleaners-tiding-260nw-395889778.jpg'),fit: BoxFit.fill
                    )
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: UnconstrainedBox(
                        child: IconButtonWidget(
                          icon: Icons.arrow_forward_ios,
                          onPressed: () => Get.back(),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const TextWidget(
                      'خدمه تنظيف الغرف',
                      weight: FontWeight.bold,
                      size: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: size.height * .04,
                            width: size.width * .1,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                            ),
                            child: const Center(
                                child: TextWidget(
                                  '4.4',
                                  size: 15,
                                ))),
                        const TextWidget(
                          'مراجعات',
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(top: 230,
              child: Container(width: size.width,
                decoration:const BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(30.00),topRight:Radius.circular(30.00)),
                  color: Colors.white,
                ),
                child: Directionality(textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(size.width*.05, 0,25, 0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget('يرجي اختيار الخدمه',weight: FontWeight.bold,textColor: AppColors.appBlue,size: 20,),
                        SizedBox(
                          height: size.height * 0.55,
                          child: SingleChildScrollView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: size.height * 0.54,
                                  child: SingleChildScrollView(
                                    physics: const AlwaysScrollableScrollPhysics(),
                                    child: Column(
                                      children: [
                                        for(int i = 0 ; i < 11 ; i++)
                                        const HousekeepingServicesPriceWidget(image: 'dddd',)
                                      ],
                                    ),
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: (){
                              Get.toNamed(Routes.HOUSEKEEPING_RESERVATION);
                            },
                            child: Container(
                              height:size.height * 0.05 ,
                              width: size.width * 0.7,
                              decoration: BoxDecoration(
                                color: AppColors.appHallsRedDark,
                                borderRadius: BorderRadius.all( Radius.circular(size.width * 0.05)),
                              ),
                              child:const TextWidget("استمرار" , textAlign: TextAlign.center,weight: FontWeight.bold,textColor: Colors.white,),
                            ),
                          ),
                        ),
                      ],),
                  ),
                ),
              ),
            ),
          ],),
        )
    );
  }
}