// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressModel _$$_AddressModelFromJson(Map<String, dynamic> json) =>
    _$_AddressModel(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      address: json['address'] as String,
      country: CountryModel.fromJson(json['country'] as Map<String, dynamic>),
      state: json['state'] == null
          ? null
          : StateModel.fromJson(json['state'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : CityModel.fromJson(json['city'] as Map<String, dynamic>),
      postalCode: json['postal_code'] as String,
      phone: json['phone'] as String,
      setDefault: json['set_default'] as bool,
      lat: (json['lat'] as num).toDouble(),
      lang: (json['lang'] as num).toDouble(),
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'address': instance.address,
      'country': instance.country.toJson(),
      'state': instance.state?.toJson(),
      'city': instance.city?.toJson(),
      'postal_code': instance.postalCode,
      'phone': instance.phone,
      'set_default': instance.setDefault,
      'lat': instance.lat,
      'lang': instance.lang,
      'is_active': instance.isActive,
    };
