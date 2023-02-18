
import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class SpaReservationPackage extends GetView<HomeController> {
  const SpaReservationPackage(this.name, this.title, {Key? key}) : super(key: key);
  final String name;
  final String title;
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top:5, bottom: 10),
      child: Container(
        width: size.width*.9,
        height: size.height*.3,
        decoration:const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.00)),color: AppColors.appGreyDark
        ),
        child: Column(
          children:[
            ImageWidget(path: "https://www.wearegurgaon.com/wp-content/uploads/2022/04/Affinity-Salon-Gurgaon.jpg",width: size.width*.9,
              height: size.height*.18, fit: BoxFit.cover,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(name,weight: FontWeight.bold),
                      TextWidget(title,weight: FontWeight.bold),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:5, right:10),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          controller.serviceIndex.value=0;

                        },
                        child: Container(
                          height:size.height * 0.055 ,
                          width: size.width * 0.2,
                          decoration: BoxDecoration(
                            color:Colors.white ,
                            borderRadius: BorderRadius.all( Radius.circular(size.width * 0.05)),
                          ),
                          child:const Center(child:  TextWidget(AppStrings.reserve , textAlign: TextAlign.center,weight: FontWeight.bold,)),
                        ),
                      ),
                      const TextWidget('250 LE',weight: FontWeight.bold)

                    ],
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    )
    ;
  }

}
