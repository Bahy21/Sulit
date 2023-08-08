// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_product_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainProductDetailsModel _$MainProductDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _MainProductDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$MainProductDetailsModel {
  ProductModel get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'related_products')
  List<ProductModel> get relatedProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'top_products')
  List<ProductModel> get topProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_queries')
  ProductQueriesModel get productQueries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainProductDetailsModelCopyWith<MainProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainProductDetailsModelCopyWith<$Res> {
  factory $MainProductDetailsModelCopyWith(MainProductDetailsModel value,
          $Res Function(MainProductDetailsModel) then) =
      _$MainProductDetailsModelCopyWithImpl<$Res, MainProductDetailsModel>;
  @useResult
  $Res call(
      {ProductModel product,
      @JsonKey(name: 'related_products') List<ProductModel> relatedProducts,
      @JsonKey(name: 'top_products') List<ProductModel> topProducts,
      @JsonKey(name: 'product_queries') ProductQueriesModel productQueries});

  $ProductModelCopyWith<$Res> get product;
  $ProductQueriesModelCopyWith<$Res> get productQueries;
}

/// @nodoc
class _$MainProductDetailsModelCopyWithImpl<$Res,
        $Val extends MainProductDetailsModel>
    implements $MainProductDetailsModelCopyWith<$Res> {
  _$MainProductDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? relatedProducts = null,
    Object? topProducts = null,
    Object? productQueries = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      relatedProducts: null == relatedProducts
          ? _value.relatedProducts
          : relatedProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      topProducts: null == topProducts
          ? _value.topProducts
          : topProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      productQueries: null == productQueries
          ? _value.productQueries
          : productQueries // ignore: cast_nullable_to_non_nullable
              as ProductQueriesModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductQueriesModelCopyWith<$Res> get productQueries {
    return $ProductQueriesModelCopyWith<$Res>(_value.productQueries, (value) {
      return _then(_value.copyWith(productQueries: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MainProductDetailsModelCopyWith<$Res>
    implements $MainProductDetailsModelCopyWith<$Res> {
  factory _$$_MainProductDetailsModelCopyWith(_$_MainProductDetailsModel value,
          $Res Function(_$_MainProductDetailsModel) then) =
      __$$_MainProductDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductModel product,
      @JsonKey(name: 'related_products') List<ProductModel> relatedProducts,
      @JsonKey(name: 'top_products') List<ProductModel> topProducts,
      @JsonKey(name: 'product_queries') ProductQueriesModel productQueries});

  @override
  $ProductModelCopyWith<$Res> get product;
  @override
  $ProductQueriesModelCopyWith<$Res> get productQueries;
}

/// @nodoc
class __$$_MainProductDetailsModelCopyWithImpl<$Res>
    extends _$MainProductDetailsModelCopyWithImpl<$Res,
        _$_MainProductDetailsModel>
    implements _$$_MainProductDetailsModelCopyWith<$Res> {
  __$$_MainProductDetailsModelCopyWithImpl(_$_MainProductDetailsModel _value,
      $Res Function(_$_MainProductDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? relatedProducts = null,
    Object? topProducts = null,
    Object? productQueries = null,
  }) {
    return _then(_$_MainProductDetailsModel(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      relatedProducts: null == relatedProducts
          ? _value._relatedProducts
          : relatedProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      topProducts: null == topProducts
          ? _value._topProducts
          : topProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      productQueries: null == productQueries
          ? _value.productQueries
          : productQueries // ignore: cast_nullable_to_non_nullable
              as ProductQueriesModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MainProductDetailsModel extends _MainProductDetailsModel {
  const _$_MainProductDetailsModel(
      {required this.product,
      @JsonKey(name: 'related_products')
      required final List<ProductModel> relatedProducts,
      @JsonKey(name: 'top_products')
      required final List<ProductModel> topProducts,
      @JsonKey(name: 'product_queries') required this.productQueries})
      : _relatedProducts = relatedProducts,
        _topProducts = topProducts,
        super._();

  factory _$_MainProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_MainProductDetailsModelFromJson(json);

  @override
  final ProductModel product;
  final List<ProductModel> _relatedProducts;
  @override
  @JsonKey(name: 'related_products')
  List<ProductModel> get relatedProducts {
    if (_relatedProducts is EqualUnmodifiableListView) return _relatedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedProducts);
  }

  final List<ProductModel> _topProducts;
  @override
  @JsonKey(name: 'top_products')
  List<ProductModel> get topProducts {
    if (_topProducts is EqualUnmodifiableListView) return _topProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topProducts);
  }

  @override
  @JsonKey(name: 'product_queries')
  final ProductQueriesModel productQueries;

  @override
  String toString() {
    return 'MainProductDetailsModel(product: $product, relatedProducts: $relatedProducts, topProducts: $topProducts, productQueries: $productQueries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainProductDetailsModel &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality()
                .equals(other._relatedProducts, _relatedProducts) &&
            const DeepCollectionEquality()
                .equals(other._topProducts, _topProducts) &&
            (identical(other.productQueries, productQueries) ||
                other.productQueries == productQueries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      product,
      const DeepCollectionEquality().hash(_relatedProducts),
      const DeepCollectionEquality().hash(_topProducts),
      productQueries);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainProductDetailsModelCopyWith<_$_MainProductDetailsModel>
      get copyWith =>
          __$$_MainProductDetailsModelCopyWithImpl<_$_MainProductDetailsModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainProductDetailsModelToJson(
      this,
    );
  }
}

abstract class _MainProductDetailsModel extends MainProductDetailsModel {
  const factory _MainProductDetailsModel(
          {required final ProductModel product,
          @JsonKey(name: 'related_products')
          required final List<ProductModel> relatedProducts,
          @JsonKey(name: 'top_products')
          required final List<ProductModel> topProducts,
          @JsonKey(name: 'product_queries')
          required final ProductQueriesModel productQueries}) =
      _$_MainProductDetailsModel;
  const _MainProductDetailsModel._() : super._();

  factory _MainProductDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_MainProductDetailsModel.fromJson;

  @override
  ProductModel get product;
  @override
  @JsonKey(name: 'related_products')
  List<ProductModel> get relatedProducts;
  @override
  @JsonKey(name: 'top_products')
  List<ProductModel> get topProducts;
  @override
  @JsonKey(name: 'product_queries')
  ProductQueriesModel get productQueries;
  @override
  @JsonKey(ignore: true)
  _$$_MainProductDetailsModelCopyWith<_$_MainProductDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}
