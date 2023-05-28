import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/core/utils/user_manager.dart';
import 'package:easy_hotel/app/data/model/auth/login/dto/request/login_request.dart';
import 'package:easy_hotel/app/data/repository/auth/auth_repository.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  final loginForm = GlobalKey<FormState>();
  final isLoading = false.obs;
  final requestDto = LoginRequestDto();
  final showPassword = false.obs ;


  Future login() async {
    if(!loginForm.currentState!.validate()) return;
    isLoading(true);
    AuthRepository().login(requestDto,
      onSuccess: (data){
        UserManager().login(data.data);
        Get.offNamed(Routes.HOME);
      },
      onError: (error)=> showPopupText(error.toString()),
      onComplete: () => isLoading(false)
    );

  }

  // changePasswordVisibility() => showPassword(!showPassword.value);
}
