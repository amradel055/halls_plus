import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/core/utils/user_manager.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/all_orders_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/response/order_response.dart';
import 'package:easy_hotel/app/data/repository/delivery/delivery_repository.dart';
import 'package:get/get.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../../../main.dart';
class HomeController extends GetxController {

  RxInt  index = 0.obs;
  RxInt  serviceIndex = 0.obs;
  RxInt selectedType = 1.obs;
  final isLoading = false.obs;

  final allOrders = <PolmanOrder>[].obs;





   @override
  void onInit() {
    super.onInit();
    getAllOrders();

    final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

    firebaseMessaging.subscribeToTopic(AppConstants.halls);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    });
    var initialzationSettingsAndroid = const AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettings = InitializationSettings(android: initialzationSettingsAndroid);
    flutterLocalNotificationsPlugin.initialize(initializationSettings);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification!.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channelDescription: channel.description,
                icon: android.smallIcon,
                importance: Importance.max,
                priority: Priority.max,
                playSound: true,

              ),
            ));

        FirebaseMessaging.onMessageOpenedApp.listen((event) {
          print("sdsd");
        });
      }
    });

  }



   getAllOrders() async {
     isLoading(true);
     final request = AllOrdersRequestDto(
         branchId: UserManager().user!.branchId,


     );
     DeliveryRepository().getAllOrders(request,
         onSuccess: (data) {
           allOrders.assignAll(data.data);
         },
         onError: (e) => showPopupText( e.toString()),
         onComplete: () => isLoading(false)
     );
   }



   // filter(String num){
   //
   //   delayedOrders.value = List<PolmanOrder>.from(allDelayedOrders.where((element) => element.customerName!.contains(num)).toList());
   //
   // }


}
