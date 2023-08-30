// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryModel _$DeliveryModelFromJson(Map<String, dynamic> json) {
  return _DeliveryModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryModel {
  @JsonKey(name: "transit_in")
  String get transitIn => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_cost")
  String get shippingCost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryModelCopyWith<DeliveryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryModelCopyWith<$Res> {
  factory $DeliveryModelCopyWith(
          DeliveryModel value, $Res Function(DeliveryModel) then) =
      _$DeliveryModelCopyWithImpl<$Res, DeliveryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "transit_in") String transitIn,
      @JsonKey(name: "shipping_cost") String shippingCost});
}

/// @nodoc
class _$DeliveryModelCopyWithImpl<$Res, $Val extends DeliveryModel>
    implements $DeliveryModelCopyWith<$Res> {
  _$DeliveryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transitIn = null,
    Object? shippingCost = null,
  }) {
    return _then(_value.copyWith(
      transitIn: null == transitIn
          ? _value.transitIn
          : transitIn // ignore: cast_nullable_to_non_nullable
              as String,
      shippingCost: null == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryModelCopyWith<$Res>
    implements $DeliveryModelCopyWith<$Res> {
  factory _$$_DeliveryModelCopyWith(
          _$_DeliveryModel value, $Res Function(_$_DeliveryModel) then) =
      __$$_DeliveryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "transit_in") String transitIn,
      @JsonKey(name: "shipping_cost") String shippingCost});
}

/// @nodoc
class __$$_DeliveryModelCopyWithImpl<$Res>
    extends _$DeliveryModelCopyWithImpl<$Res, _$_DeliveryModel>
    implements _$$_DeliveryModelCopyWith<$Res> {
  __$$_DeliveryModelCopyWithImpl(
      _$_DeliveryModel _value, $Res Function(_$_DeliveryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transitIn = null,
    Object? shippingCost = null,
  }) {
    return _then(_$_DeliveryModel(
      transitIn: null == transitIn
          ? _value.transitIn
          : transitIn // ignore: cast_nullable_to_non_nullable
              as String,
      shippingCost: null == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DeliveryModel extends _DeliveryModel {
  const _$_DeliveryModel(
      {@JsonKey(name: "transit_in") required this.transitIn,
      @JsonKey(name: "shipping_cost") required this.shippingCost})
      : super._();

  factory _$_DeliveryModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryModelFromJson(json);

  @override
  @JsonKey(name: "transit_in")
  final String transitIn;
  @override
  @JsonKey(name: "shipping_cost")
  final String shippingCost;

  @override
  String toString() {
    return 'DeliveryModel(transitIn: $transitIn, shippingCost: $shippingCost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryModel &&
            (identical(other.transitIn, transitIn) ||
                other.transitIn == transitIn) &&
            (identical(other.shippingCost, shippingCost) ||
                other.shippingCost == shippingCost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transitIn, shippingCost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryModelCopyWith<_$_DeliveryModel> get copyWith =>
      __$$_DeliveryModelCopyWithImpl<_$_DeliveryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryModelToJson(
      this,
    );
  }
}

abstract class _DeliveryModel extends DeliveryModel {
  const factory _DeliveryModel(
          {@JsonKey(name: "transit_in") required final String transitIn,
          @JsonKey(name: "shipping_cost") required final String shippingCost}) =
      _$_DeliveryModel;
  const _DeliveryModel._() : super._();

  factory _DeliveryModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryModel.fromJson;

  @override
  @JsonKey(name: "transit_in")
  String get transitIn;
  @override
  @JsonKey(name: "shipping_cost")
  String get shippingCost;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryModelCopyWith<_$_DeliveryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
