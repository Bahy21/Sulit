// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int,
      name: json['name'] as String,
      avatar: json['avatar'] as String?,
      avatarOriginal: json['avatar_original'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      token: json['token'] as String,
      tokenType: json['token_type'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'avatar_original': instance.avatarOriginal,
      'email': instance.email,
      'phone': instance.phone,
      'token': instance.token,
      'token_type': instance.tokenType,
    };
