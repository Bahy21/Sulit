// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_discount')
  bool get hasDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  String get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'stroked_price')
  String get strokedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_price')
  String get mainPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales')
  int get sales => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_id')
  int get sellerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_resale')
  bool get isResale => throw _privateConstructorUsedError;
  @JsonKey(name: 'reseller_id')
  int get resellerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      @JsonKey(name: 'has_discount') bool hasDiscount,
      @JsonKey(name: 'discount') String discount,
      @JsonKey(name: 'stroked_price') String strokedPrice,
      @JsonKey(name: 'main_price') String mainPrice,
      @JsonKey(name: 'rating') int rating,
      @JsonKey(name: 'sales') int sales,
      @JsonKey(name: 'seller_id') int sellerId,
      @JsonKey(name: 'is_resale') bool isResale,
      @JsonKey(name: 'reseller_id') int resellerId});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnailImage = null,
    Object? hasDiscount = null,
    Object? discount = null,
    Object? strokedPrice = null,
    Object? mainPrice = null,
    Object? rating = null,
    Object? sales = null,
    Object? sellerId = null,
    Object? isResale = null,
    Object? resellerId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      hasDiscount: null == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      strokedPrice: null == strokedPrice
          ? _value.strokedPrice
          : strokedPrice // ignore: cast_nullable_to_non_nullable
              as String,
      mainPrice: null == mainPrice
          ? _value.mainPrice
          : mainPrice // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as int,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      isResale: null == isResale
          ? _value.isResale
          : isResale // ignore: cast_nullable_to_non_nullable
              as bool,
      resellerId: null == resellerId
          ? _value.resellerId
          : resellerId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      @JsonKey(name: 'has_discount') bool hasDiscount,
      @JsonKey(name: 'discount') String discount,
      @JsonKey(name: 'stroked_price') String strokedPrice,
      @JsonKey(name: 'main_price') String mainPrice,
      @JsonKey(name: 'rating') int rating,
      @JsonKey(name: 'sales') int sales,
      @JsonKey(name: 'seller_id') int sellerId,
      @JsonKey(name: 'is_resale') bool isResale,
      @JsonKey(name: 'reseller_id') int resellerId});
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnailImage = null,
    Object? hasDiscount = null,
    Object? discount = null,
    Object? strokedPrice = null,
    Object? mainPrice = null,
    Object? rating = null,
    Object? sales = null,
    Object? sellerId = null,
    Object? isResale = null,
    Object? resellerId = null,
  }) {
    return _then(_$_ProductModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      hasDiscount: null == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      strokedPrice: null == strokedPrice
          ? _value.strokedPrice
          : strokedPrice // ignore: cast_nullable_to_non_nullable
              as String,
      mainPrice: null == mainPrice
          ? _value.mainPrice
          : mainPrice // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as int,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      isResale: null == isResale
          ? _value.isResale
          : isResale // ignore: cast_nullable_to_non_nullable
              as bool,
      resellerId: null == resellerId
          ? _value.resellerId
          : resellerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProductModel extends _ProductModel {
  const _$_ProductModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'thumbnail_image') required this.thumbnailImage,
      @JsonKey(name: 'has_discount') required this.hasDiscount,
      @JsonKey(name: 'discount') required this.discount,
      @JsonKey(name: 'stroked_price') required this.strokedPrice,
      @JsonKey(name: 'main_price') required this.mainPrice,
      @JsonKey(name: 'rating') required this.rating,
      @JsonKey(name: 'sales') required this.sales,
      @JsonKey(name: 'seller_id') required this.sellerId,
      @JsonKey(name: 'is_resale') required this.isResale,
      @JsonKey(name: 'reseller_id') required this.resellerId})
      : super._();

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'thumbnail_image')
  final String thumbnailImage;
  @override
  @JsonKey(name: 'has_discount')
  final bool hasDiscount;
  @override
  @JsonKey(name: 'discount')
  final String discount;
  @override
  @JsonKey(name: 'stroked_price')
  final String strokedPrice;
  @override
  @JsonKey(name: 'main_price')
  final String mainPrice;
  @override
  @JsonKey(name: 'rating')
  final int rating;
  @override
  @JsonKey(name: 'sales')
  final int sales;
  @override
  @JsonKey(name: 'seller_id')
  final int sellerId;
  @override
  @JsonKey(name: 'is_resale')
  final bool isResale;
  @override
  @JsonKey(name: 'reseller_id')
  final int resellerId;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, thumbnailImage: $thumbnailImage, hasDiscount: $hasDiscount, discount: $discount, strokedPrice: $strokedPrice, mainPrice: $mainPrice, rating: $rating, sales: $sales, sellerId: $sellerId, isResale: $isResale, resellerId: $resellerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnailImage, thumbnailImage) ||
                other.thumbnailImage == thumbnailImage) &&
            (identical(other.hasDiscount, hasDiscount) ||
                other.hasDiscount == hasDiscount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.strokedPrice, strokedPrice) ||
                other.strokedPrice == strokedPrice) &&
            (identical(other.mainPrice, mainPrice) ||
                other.mainPrice == mainPrice) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.sales, sales) || other.sales == sales) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.isResale, isResale) ||
                other.isResale == isResale) &&
            (identical(other.resellerId, resellerId) ||
                other.resellerId == resellerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      thumbnailImage,
      hasDiscount,
      discount,
      strokedPrice,
      mainPrice,
      rating,
      sales,
      sellerId,
      isResale,
      resellerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel extends ProductModel {
  const factory _ProductModel(
      {@JsonKey(name: 'id')
          required final int id,
      @JsonKey(name: 'name')
          required final String name,
      @JsonKey(name: 'thumbnail_image')
          required final String thumbnailImage,
      @JsonKey(name: 'has_discount')
          required final bool hasDiscount,
      @JsonKey(name: 'discount')
          required final String discount,
      @JsonKey(name: 'stroked_price')
          required final String strokedPrice,
      @JsonKey(name: 'main_price')
          required final String mainPrice,
      @JsonKey(name: 'rating')
          required final int rating,
      @JsonKey(name: 'sales')
          required final int sales,
      @JsonKey(name: 'seller_id')
          required final int sellerId,
      @JsonKey(name: 'is_resale')
          required final bool isResale,
      @JsonKey(name: 'reseller_id')
          required final int resellerId}) = _$_ProductModel;
  const _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage;
  @override
  @JsonKey(name: 'has_discount')
  bool get hasDiscount;
  @override
  @JsonKey(name: 'discount')
  String get discount;
  @override
  @JsonKey(name: 'stroked_price')
  String get strokedPrice;
  @override
  @JsonKey(name: 'main_price')
  String get mainPrice;
  @override
  @JsonKey(name: 'rating')
  int get rating;
  @override
  @JsonKey(name: 'sales')
  int get sales;
  @override
  @JsonKey(name: 'seller_id')
  int get sellerId;
  @override
  @JsonKey(name: 'is_resale')
  bool get isResale;
  @override
  @JsonKey(name: 'reseller_id')
  int get resellerId;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
