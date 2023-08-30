import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/get_device_id.dart';

class LoginParams {
  String? email;
  String? password;

  LoginParams({this.password, this.email});

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        'mac_address': getIt<GetDeviceId>().deviceId
      };
}
