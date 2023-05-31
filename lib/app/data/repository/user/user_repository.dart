

import '../../model/user/dto/request/send_fcm_request.dart';
import '../../provider/api_provider.dart';

class UserRepository {

  // updateUser(
  //   UpdateUserPutRequest updateUserPutRequest, {
  //   Function()? beforeSend,
  //   Function(GenericResponse<UpdateUserPutResponse> data)? onSuccess,
  //   Function(dynamic error)? onError,
  // }) {
  //   final token = UserManager().token;
  //   ApiProvider().put<UpdateUserPutResponse>('User/UpdateProfile',
  //       beforeSend: beforeSend,
  //       token: token,
  //       data: updateUserPutRequest.toJson(),
  //       onSuccess: onSuccess,
  //       onError: onError);
  // }




final String apiKey = "AAAAlEq9lFs:APA91bGrzO5fQDFJ6a16rMvXUlJFcMTjcNbpnZNeWeLfi4U88o1bdLh5GHJJeXsWxDF_9FNjCu5S8DcSAr3DRm0aoUhk-NJdDVO8mOJJ-JXY61BdEU2zPybeGCakj2geBpYQE3Gtmkga";
  
  sendNotification(
      SendFcmRequest request, {
        Function()? onComplete,
        Function(void)? onSuccess,
        Function(dynamic error)? onError,
      }) =>
      ApiProvider().post<void>('https://fcm.googleapis.com/fcm/send',
        onComplete: onComplete,
        onSuccess: onSuccess,
        data: request.toJson(),
        header: {
        "Authorization": "key=$apiKey"
        },
        onError: onError,
        convertor: (_) {  },
      );


}
