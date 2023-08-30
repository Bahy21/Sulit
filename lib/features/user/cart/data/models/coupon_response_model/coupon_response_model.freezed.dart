// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CouponResponseModel _$CouponResponseModelFromJson(Map<String, dynamic> json) {
  return _CouponResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CouponResponseModel {
  String get msg => throw _privateConstructorUsedError;
  ShippingModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponResponseModelCopyWith<CouponResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponResponseModelCopyWith<$Res> {
  factory $CouponResponseModelCopyWith(
          CouponResponseModel value, $Res Function(CouponResponseModel) then) =
      _$CouponResponseModelCopyWithImpl<$Res, CouponResponseModel>;
  @useResult
  $Res call({String msg, ShippingModel data});

  $ShippingModelCopyWith<$Res> get data;
}

/// @nodoc
class _$CouponResponseModelCopyWithImpl<$Res, $Val extends CouponResponseModel>
    implements $CouponResponseModelCopyWith<$Res> {
  _$CouponResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ShippingModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShippingModelCopyWith<$Res> get data {
    return $ShippingModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CouponResponseModelCopyWith<$Res>
    implements $CouponResponseModelCopyWith<$Res> {
  factory _$$_CouponResponseModelCopyWith(_$_CouponResponseModel value,
          $Res Function(_$_CouponResponseModel) then) =
      __$$_CouponResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg, ShippingModel data});

  @override
  $ShippingModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CouponResponseModelCopyWithImpl<$Res>
    extends _$CouponResponseModelCopyWithImpl<$Res, _$_CouponResponseModel>
    implements _$$_CouponResponseModelCopyWith<$Res> {
  __$$_CouponResponseModelCopyWithImpl(_$_CouponResponseModel _value,
      $Res Function(_$_CouponResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_$_CouponResponseModel(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ShippingModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CouponResponseModel extends _CouponResponseModel {
  const _$_CouponResponseModel({required this.msg, required this.data})
      : super._();

  factory _$_CouponResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CouponResponseModelFromJson(json);

  @override
  final String msg;
  @override
  final ShippingModel data;

  @override
  String toString() {
    return 'CouponResponseModel(msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CouponResponseModel &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, msg, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CouponResponseModelCopyWith<_$_CouponResponseModel> get copyWith =>
      __$$_CouponResponseModelCopyWithImpl<_$_CouponResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CouponResponseModelToJson(
      this,
    );
  }
}

abstract class _CouponResponseModel extends CouponResponseModel {
  const factory _CouponResponseModel(
      {required final String msg,
      required final ShippingModel data}) = _$_CouponResponseModel;
  const _CouponResponseModel._() : super._();

  factory _CouponResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CouponResponseModel.fromJson;

  @override
  String get msg;
  @override
  ShippingModel get data;
  @override
  @JsonKey(ignore: true)
  _$$_CouponResponseModelCopyWith<_$_CouponResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
