
import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class OrderContainer extends GetView<HomeController> {
  const OrderContainer(this.showDetails, this.num, this.clientNum, this.time, this.name, this.address, this.i,  {Key? key}) : super(key: key);
  final bool showDetails;
  final String num;
  final int clientNum;
  final String time;
  final String name;
  final String address;
  final int i;



  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
      return  Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Center(
              child: Container(
                  width: size.width*.95 ,
                  height: size.height*.1,
                  decoration:const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: AppColors.appGreyDark,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:  CircleAvatar(
                          radius: size.width*.07,
                          backgroundColor: AppColors.appBlue,
                          child:
                           TextWidget(num.toString(),textColor: Colors.white,weight: FontWeight.bold,size: 18,)
                          ,
                        ),
                      ),
                      SizedBox(
                        width: showDetails ?  size.width*.55:size.width*.68,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                TextWidget(name,textColor: AppColors.appBlue,weight: FontWeight.bold,size: 13,)

                              ],
                            ),
                            Row(
                              children: [
                                TextWidget(clientNum.toString(),textColor: AppColors.appBlue,weight: FontWeight.bold,size: 13,)

                              ],
                            ),



                          ],
                        ),
                      ),
                      SizedBox(
                        width: showDetails ?  size.width*.1:size.width*.1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                TextWidget(time.toString(),textColor: AppColors.appBlue,weight: FontWeight.bold,size: 18,)

                              ],
                            ),

                          ],
                        ),
                      ),

                      showDetails ?   GestureDetector(
                        onTap: (){
                          // controller.getDeliveredOrders();
                          // controller.getAllOrders();
                          // controller.getDelyedOrders();
                          },
                        child: Container(

                          height: size.height * .06,
                          width: size.width * .13,
                          decoration:  BoxDecoration(
                            borderRadius:const  BorderRadius.all(
                                Radius.circular(50.00)), color:controller.index.value == 0 ?Colors.green:Colors.red,
                          ),
                          child:
                          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:  [
                              TextWidget(controller.index.value == 0 ?"Start":"End",weight: FontWeight.bold,textColor: Colors.white,),
                               // Icon(Icons.shopping_bag,color: Colors.white ),
                            ],
                          ),

                        ),
                      ):const SizedBox()





                    ],
                  )


              ),
            ),
          ),

        ],
      );




  }

}
