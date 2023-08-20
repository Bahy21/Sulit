// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShippingItemModel _$ShippingItemModelFromJson(Map<String, dynamic> json) {
  return _ShippingItemModel.fromJson(json);
}

/// @nodoc
mixin _$ShippingItemModel {
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingItemModelCopyWith<ShippingItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingItemModelCopyWith<$Res> {
  factory $ShippingItemModelCopyWith(
          ShippingItemModel value, $Res Function(ShippingItemModel) then) =
      _$ShippingItemModelCopyWithImpl<$Res, ShippingItemModel>;
  @useResult
  $Res call({String name, int quantity, String total});
}

/// @nodoc
class _$ShippingItemModelCopyWithImpl<$Res, $Val extends ShippingItemModel>
    implements $ShippingItemModelCopyWith<$Res> {
  _$ShippingItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShippingItemModelCopyWith<$Res>
    implements $ShippingItemModelCopyWith<$Res> {
  factory _$$_ShippingItemModelCopyWith(_$_ShippingItemModel value,
          $Res Function(_$_ShippingItemModel) then) =
      __$$_ShippingItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int quantity, String total});
}

/// @nodoc
class __$$_ShippingItemModelCopyWithImpl<$Res>
    extends _$ShippingItemModelCopyWithImpl<$Res, _$_ShippingItemModel>
    implements _$$_ShippingItemModelCopyWith<$Res> {
  __$$_ShippingItemModelCopyWithImpl(
      _$_ShippingItemModel _value, $Res Function(_$_ShippingItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? total = null,
  }) {
    return _then(_$_ShippingItemModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ShippingItemModel extends _ShippingItemModel {
  const _$_ShippingItemModel(
      {required this.name, required this.quantity, required this.total})
      : super._();

  factory _$_ShippingItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingItemModelFromJson(json);

  @override
  final String name;
  @override
  final int quantity;
  @override
  final String total;

  @override
  String toString() {
    return 'ShippingItemModel(name: $name, quantity: $quantity, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShippingItemModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, quantity, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShippingItemModelCopyWith<_$_ShippingItemModel> get copyWith =>
      __$$_ShippingItemModelCopyWithImpl<_$_ShippingItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingItemModelToJson(
      this,
    );
  }
}

abstract class _ShippingItemModel extends ShippingItemModel {
  const factory _ShippingItemModel(
      {required final String name,
      required final int quantity,
      required final String total}) = _$_ShippingItemModel;
  const _ShippingItemModel._() : super._();

  factory _ShippingItemModel.fromJson(Map<String, dynamic> json) =
      _$_ShippingItemModel.fromJson;

  @override
  String get name;
  @override
  int get quantity;
  @override
  String get total;
  @override
  @JsonKey(ignore: true)
  _$$_ShippingItemModelCopyWith<_$_ShippingItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
