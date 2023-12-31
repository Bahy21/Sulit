import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';

class UserDomainModel extends BaseDomainModel {
  int? id;
  String? name;
  String? avatar;
  String? avatarOriginal;
  String? email;
  String? phone;
  String? token;
  String? tokenType;
  bool?isPhoneActive;
  Address? address ;

  UserDomainModel({
    this.id,
    this.name,
    this.avatar,
    this.avatarOriginal,
    this.email,
    this.phone,
    this.token,
    this.tokenType,
    this.isPhoneActive,
    this.address
  });

  UserDomainModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    avatar = json['avatar'];
    avatarOriginal = json['avatar_original'];
    phone = json['phone'];
    token = json['token'];
    tokenType = json['token_type'];
    isPhoneActive=json['phone_is_active'];
    address = address != null ? Address.fromJson(json) : null ;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['avatar'] = avatar;
    data['avatar_original'] = avatarOriginal;
    data['phone'] = phone;
    data['token'] = token;
    data['token_type'] = tokenType;
    data['phone_is_active']=isPhoneActive;
    data['address'] = address?.toJson();
    return data;
  }
}
