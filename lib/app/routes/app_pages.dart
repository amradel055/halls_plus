
import 'package:easy_hotel/app/modules/home/bindings/home_binding.dart';
import 'package:easy_hotel/app/modules/home/views/home_view.dart';
import 'package:easy_hotel/app/modules/login/bindings/login_binding.dart';
import 'package:easy_hotel/app/modules/login/views/login_view.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';

import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),

  ];
}
