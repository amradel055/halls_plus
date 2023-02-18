import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterBarWidgets extends GetView<HomeController> {
  const FilterBarWidgets({Key? key, required this.title, required this.index})
      : super(key: key);
  final String title;
  final int index;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return GestureDetector(
      onTap: () {
        controller.index(index);
      },
      child: Obx(() {
        return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                children: [
                  TextWidget(
                    title,
                    size: size.width * 0.05,
                      weight: index == controller.index.value ? FontWeight
                          .bold : FontWeight.normal,
                      textColor: index == controller.index.value
                          ? Colors.black
                          : Colors.black,
                     textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
        );
      }),
    );
  }

}
