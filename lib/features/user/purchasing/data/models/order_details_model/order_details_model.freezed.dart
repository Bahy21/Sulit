// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get variation => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_type')
  String get deliveryType => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String? get tax => throw _privateConstructorUsedError;
  ProductModel? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsModelCopyWith<$Res> {
  factory $OrderDetailsModelCopyWith(
          OrderDetailsModel value, $Res Function(OrderDetailsModel) then) =
      _$OrderDetailsModelCopyWithImpl<$Res, OrderDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String variation,
      int quantity,
      @JsonKey(name: 'delivery_type') String deliveryType,
      String price,
      String? tax,
      ProductModel? product});

  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res, $Val extends OrderDetailsModel>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? variation = null,
    Object? quantity = null,
    Object? deliveryType = null,
    Object? price = null,
    Object? tax = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      variation: null == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderDetailsModelCopyWith<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  factory _$$_OrderDetailsModelCopyWith(_$_OrderDetailsModel value,
          $Res Function(_$_OrderDetailsModel) then) =
      __$$_OrderDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String variation,
      int quantity,
      @JsonKey(name: 'delivery_type') String deliveryType,
      String price,
      String? tax,
      ProductModel? product});

  @override
  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_OrderDetailsModelCopyWithImpl<$Res>
    extends _$OrderDetailsModelCopyWithImpl<$Res, _$_OrderDetailsModel>
    implements _$$_OrderDetailsModelCopyWith<$Res> {
  __$$_OrderDetailsModelCopyWithImpl(
      _$_OrderDetailsModel _value, $Res Function(_$_OrderDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? variation = null,
    Object? quantity = null,
    Object? deliveryType = null,
    Object? price = null,
    Object? tax = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_OrderDetailsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      variation: null == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderDetailsModel extends _OrderDetailsModel {
  const _$_OrderDetailsModel(
      {required this.id,
      required this.variation,
      required this.quantity,
      @JsonKey(name: 'delivery_type') required this.deliveryType,
      required this.price,
      this.tax,
      this.product})
      : super._();

  factory _$_OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailsModelFromJson(json);

  @override
  final int id;
  @override
  final String variation;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'delivery_type')
  final String deliveryType;
  @override
  final String price;
  @override
  final String? tax;
  @override
  final ProductModel? product;

  @override
  String toString() {
    return 'OrderDetailsModel(id: $id, variation: $variation, quantity: $quantity, deliveryType: $deliveryType, price: $price, tax: $tax, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetailsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.variation, variation) ||
                other.variation == variation) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, variation, quantity, deliveryType, price, tax, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDetailsModelCopyWith<_$_OrderDetailsModel> get copyWith =>
      __$$_OrderDetailsModelCopyWithImpl<_$_OrderDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailsModelToJson(
      this,
    );
  }
}

abstract class _OrderDetailsModel extends OrderDetailsModel {
  const factory _OrderDetailsModel(
      {required final int id,
      required final String variation,
      required final int quantity,
      @JsonKey(name: 'delivery_type') required final String deliveryType,
      required final String price,
      final String? tax,
      final ProductModel? product}) = _$_OrderDetailsModel;
  const _OrderDetailsModel._() : super._();

  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailsModel.fromJson;

  @override
  int get id;
  @override
  String get variation;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'delivery_type')
  String get deliveryType;
  @override
  String get price;
  @override
  String? get tax;
  @override
  ProductModel? get product;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailsModelCopyWith<_$_OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
