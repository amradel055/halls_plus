import 'package:easy_hotel/app/data/model/auth/login/dto/request/login_request.dart';
import 'package:easy_hotel/app/data/model/auth/login/dto/response/login_response.dart';

import 'package:easy_hotel/app/data/model/base_request.dart';
import 'package:easy_hotel/app/data/provider/api_provider.dart';

class AuthRepository {


  login(
    LoginRequestDto request, {
    SuccessFunc<LoginResponse> onSuccess,
    Function(dynamic error)? onError,
        Function()? onComplete,
    // Function(dynamic error)? onError,  Function()?onComplete,
  }) {
    ApiProvider().post<LoginResponse>(
      'auth/loginNew',
      onSuccess: onSuccess,
      data: request.toJson(),
      onComplete: onComplete,
      queryParameters: request.toJson(),
      onError: onError,
      convertor: LoginResponse.fromJson,
      // onComplete: onComplete
    );
  }
}
