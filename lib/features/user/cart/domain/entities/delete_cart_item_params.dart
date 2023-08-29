import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/get_device_id.dart';

class DeleteCartItemParams {
  int id;
  String deviceId ;

  DeleteCartItemParams({
    required this.id,
    required this.deviceId
  });

  Map<String, dynamic> toJson ()=> {
    "mac_address":  deviceId
  };

  String toQuery () => '/$id/delete' ;
}
