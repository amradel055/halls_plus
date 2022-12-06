

import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/modules/cars/cars_category/views/widgets/car_widget.dart';
import 'package:easy_hotel/app/modules/cars/cars_category/views/widgets/cars_category_filter_dialog.dart';
import 'package:flutter/material.dart';

import '../../cars_main/views/widgets/cars_main_appbar.dart';

class CarsCategoryView extends StatelessWidget {
  const CarsCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return Scaffold(
      appBar:CarsMainAppbar(size.height * 0.27 , " احجز بافضل الاسعار وقارن بين عروض  \nتآجير السيارات عبر اكتر من ٤٥٠ سياره \nو تمتع.... برحلات الذهاب و العودة" , "" , true),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SizedBox(
          height: size.height * 0.75,
          width: size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: size.width * 0.95,
                  height: size.height * 0.6,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: size.width * 0.1,
                    mainAxisSpacing: size.height * 0.06,
                    childAspectRatio: size.aspectRatio * 1.6,
                    children: const [
                      // for(CarModel car in carsList)
                      CarWidget()
                    ],
                  )
                ),
              ),
              GestureDetector(
                onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const CarsCategoryFilterDialog();
                  },
                );
              },
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(0, 5, size.width*.6, 0),
                  child: Container(
                    height: size.height * .06,
                    width: size.width * .25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(15.00)), color: Colors.blueAccent,
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment
                        .spaceAround,
                      children: const [
                        TextWidget('filter',),
                        Icon(Icons.filter_list)
                      ],
                    ),

                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }


}