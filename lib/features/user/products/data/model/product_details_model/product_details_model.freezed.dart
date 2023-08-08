// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_multiple')
  bool get isMultiple => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_high_low_discount')
  String get priceHighLowDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_high_low')
  String get priceHighLow => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_discount')
  bool get hasDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  String get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'stroked_price')
  String get strokedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_price')
  String get mainPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'choice_options')
  List<ProductOptionsModel>? get choiceOptions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'min_qty')
  int get minQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'calculable_price')
  int get calculablePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_stock')
  int get currentStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales')
  int get sales => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_digital')
  bool get isDigital => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_wishlist')
  bool get isWishlist => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_id')
  int get sellerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'count_reviews')
  int get countReviews => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_type')
  String get soldByType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_name')
  String get soldByName => throw _privateConstructorUsedError;
  @JsonKey(name: 'shop')
  ShopModel get shop => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews')
  List<ReviewsModel>? get reviews => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_resale')
  bool get isResale => throw _privateConstructorUsedError;
  @JsonKey(name: 'reseller_id')
  int get resellerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryModel get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  BrandModel get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_provider')
  String? get videoProvider => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_link')
  String? get videoLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_name')
  String get brandName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsModelCopyWith<ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsModelCopyWith<$Res> {
  factory $ProductDetailsModelCopyWith(
          ProductDetailsModel value, $Res Function(ProductDetailsModel) then) =
      _$ProductDetailsModelCopyWithImpl<$Res, ProductDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      @JsonKey(name: 'is_multiple') bool isMultiple,
      @JsonKey(name: 'price_high_low_discount') String priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') String priceHighLow,
      @JsonKey(name: 'has_discount') bool hasDiscount,
      @JsonKey(name: 'discount') String discount,
      @JsonKey(name: 'stroked_price') String strokedPrice,
      @JsonKey(name: 'main_price') String mainPrice,
      @JsonKey(name: 'choice_options') List<ProductOptionsModel>? choiceOptions,
      @JsonKey(name: 'min_qty') int minQty,
      @JsonKey(name: 'calculable_price') int calculablePrice,
      @JsonKey(name: 'currency_symbol') String currencySymbol,
      @JsonKey(name: 'current_stock') int currentStock,
      @JsonKey(name: 'tags') List<String>? tags,
      @JsonKey(name: 'rating') int rating,
      @JsonKey(name: 'sales') int sales,
      @JsonKey(name: 'is_digital') bool isDigital,
      @JsonKey(name: 'is_wishlist') bool isWishlist,
      @JsonKey(name: 'seller_id') int sellerId,
      @JsonKey(name: 'count_reviews') int countReviews,
      @JsonKey(name: 'sold_by_type') String soldByType,
      @JsonKey(name: 'sold_by_name') String soldByName,
      @JsonKey(name: 'shop') ShopModel shop,
      @JsonKey(name: 'reviews') List<ReviewsModel>? reviews,
      @JsonKey(name: 'is_resale') bool isResale,
      @JsonKey(name: 'reseller_id') int resellerId,
      @JsonKey(name: 'category') CategoryModel category,
      @JsonKey(name: 'brand') BrandModel brand,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'video_provider') String? videoProvider,
      @JsonKey(name: 'video_link') String? videoLink,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'brand_name') String brandName});

  $ShopModelCopyWith<$Res> get shop;
  $CategoryModelCopyWith<$Res> get category;
  $BrandModelCopyWith<$Res> get brand;
}

/// @nodoc
class _$ProductDetailsModelCopyWithImpl<$Res, $Val extends ProductDetailsModel>
    implements $ProductDetailsModelCopyWith<$Res> {
  _$ProductDetailsModelCopyWithImpl(this._value, this._then);

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
    Object? isMultiple = null,
    Object? priceHighLowDiscount = null,
    Object? priceHighLow = null,
    Object? hasDiscount = null,
    Object? discount = null,
    Object? strokedPrice = null,
    Object? mainPrice = null,
    Object? choiceOptions = freezed,
    Object? minQty = null,
    Object? calculablePrice = null,
    Object? currencySymbol = null,
    Object? currentStock = null,
    Object? tags = freezed,
    Object? rating = null,
    Object? sales = null,
    Object? isDigital = null,
    Object? isWishlist = null,
    Object? sellerId = null,
    Object? countReviews = null,
    Object? soldByType = null,
    Object? soldByName = null,
    Object? shop = null,
    Object? reviews = freezed,
    Object? isResale = null,
    Object? resellerId = null,
    Object? category = null,
    Object? brand = null,
    Object? description = null,
    Object? videoProvider = freezed,
    Object? videoLink = freezed,
    Object? categoryName = null,
    Object? brandName = null,
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
      isMultiple: null == isMultiple
          ? _value.isMultiple
          : isMultiple // ignore: cast_nullable_to_non_nullable
              as bool,
      priceHighLowDiscount: null == priceHighLowDiscount
          ? _value.priceHighLowDiscount
          : priceHighLowDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      priceHighLow: null == priceHighLow
          ? _value.priceHighLow
          : priceHighLow // ignore: cast_nullable_to_non_nullable
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
      choiceOptions: freezed == choiceOptions
          ? _value.choiceOptions
          : choiceOptions // ignore: cast_nullable_to_non_nullable
              as List<ProductOptionsModel>?,
      minQty: null == minQty
          ? _value.minQty
          : minQty // ignore: cast_nullable_to_non_nullable
              as int,
      calculablePrice: null == calculablePrice
          ? _value.calculablePrice
          : calculablePrice // ignore: cast_nullable_to_non_nullable
              as int,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      currentStock: null == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as int,
      isDigital: null == isDigital
          ? _value.isDigital
          : isDigital // ignore: cast_nullable_to_non_nullable
              as bool,
      isWishlist: null == isWishlist
          ? _value.isWishlist
          : isWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      countReviews: null == countReviews
          ? _value.countReviews
          : countReviews // ignore: cast_nullable_to_non_nullable
              as int,
      soldByType: null == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String,
      soldByName: null == soldByName
          ? _value.soldByName
          : soldByName // ignore: cast_nullable_to_non_nullable
              as String,
      shop: null == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewsModel>?,
      isResale: null == isResale
          ? _value.isResale
          : isResale // ignore: cast_nullable_to_non_nullable
              as bool,
      resellerId: null == resellerId
          ? _value.resellerId
          : resellerId // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoProvider: freezed == videoProvider
          ? _value.videoProvider
          : videoProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLink: freezed == videoLink
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopModelCopyWith<$Res> get shop {
    return $ShopModelCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res> get category {
    return $CategoryModelCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandModelCopyWith<$Res> get brand {
    return $BrandModelCopyWith<$Res>(_value.brand, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductDetailsModelCopyWith<$Res>
    implements $ProductDetailsModelCopyWith<$Res> {
  factory _$$_ProductDetailsModelCopyWith(_$_ProductDetailsModel value,
          $Res Function(_$_ProductDetailsModel) then) =
      __$$_ProductDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      @JsonKey(name: 'is_multiple') bool isMultiple,
      @JsonKey(name: 'price_high_low_discount') String priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') String priceHighLow,
      @JsonKey(name: 'has_discount') bool hasDiscount,
      @JsonKey(name: 'discount') String discount,
      @JsonKey(name: 'stroked_price') String strokedPrice,
      @JsonKey(name: 'main_price') String mainPrice,
      @JsonKey(name: 'choice_options') List<ProductOptionsModel>? choiceOptions,
      @JsonKey(name: 'min_qty') int minQty,
      @JsonKey(name: 'calculable_price') int calculablePrice,
      @JsonKey(name: 'currency_symbol') String currencySymbol,
      @JsonKey(name: 'current_stock') int currentStock,
      @JsonKey(name: 'tags') List<String>? tags,
      @JsonKey(name: 'rating') int rating,
      @JsonKey(name: 'sales') int sales,
      @JsonKey(name: 'is_digital') bool isDigital,
      @JsonKey(name: 'is_wishlist') bool isWishlist,
      @JsonKey(name: 'seller_id') int sellerId,
      @JsonKey(name: 'count_reviews') int countReviews,
      @JsonKey(name: 'sold_by_type') String soldByType,
      @JsonKey(name: 'sold_by_name') String soldByName,
      @JsonKey(name: 'shop') ShopModel shop,
      @JsonKey(name: 'reviews') List<ReviewsModel>? reviews,
      @JsonKey(name: 'is_resale') bool isResale,
      @JsonKey(name: 'reseller_id') int resellerId,
      @JsonKey(name: 'category') CategoryModel category,
      @JsonKey(name: 'brand') BrandModel brand,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'video_provider') String? videoProvider,
      @JsonKey(name: 'video_link') String? videoLink,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'brand_name') String brandName});

  @override
  $ShopModelCopyWith<$Res> get shop;
  @override
  $CategoryModelCopyWith<$Res> get category;
  @override
  $BrandModelCopyWith<$Res> get brand;
}

/// @nodoc
class __$$_ProductDetailsModelCopyWithImpl<$Res>
    extends _$ProductDetailsModelCopyWithImpl<$Res, _$_ProductDetailsModel>
    implements _$$_ProductDetailsModelCopyWith<$Res> {
  __$$_ProductDetailsModelCopyWithImpl(_$_ProductDetailsModel _value,
      $Res Function(_$_ProductDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnailImage = null,
    Object? isMultiple = null,
    Object? priceHighLowDiscount = null,
    Object? priceHighLow = null,
    Object? hasDiscount = null,
    Object? discount = null,
    Object? strokedPrice = null,
    Object? mainPrice = null,
    Object? choiceOptions = freezed,
    Object? minQty = null,
    Object? calculablePrice = null,
    Object? currencySymbol = null,
    Object? currentStock = null,
    Object? tags = freezed,
    Object? rating = null,
    Object? sales = null,
    Object? isDigital = null,
    Object? isWishlist = null,
    Object? sellerId = null,
    Object? countReviews = null,
    Object? soldByType = null,
    Object? soldByName = null,
    Object? shop = null,
    Object? reviews = freezed,
    Object? isResale = null,
    Object? resellerId = null,
    Object? category = null,
    Object? brand = null,
    Object? description = null,
    Object? videoProvider = freezed,
    Object? videoLink = freezed,
    Object? categoryName = null,
    Object? brandName = null,
  }) {
    return _then(_$_ProductDetailsModel(
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
      isMultiple: null == isMultiple
          ? _value.isMultiple
          : isMultiple // ignore: cast_nullable_to_non_nullable
              as bool,
      priceHighLowDiscount: null == priceHighLowDiscount
          ? _value.priceHighLowDiscount
          : priceHighLowDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      priceHighLow: null == priceHighLow
          ? _value.priceHighLow
          : priceHighLow // ignore: cast_nullable_to_non_nullable
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
      choiceOptions: freezed == choiceOptions
          ? _value._choiceOptions
          : choiceOptions // ignore: cast_nullable_to_non_nullable
              as List<ProductOptionsModel>?,
      minQty: null == minQty
          ? _value.minQty
          : minQty // ignore: cast_nullable_to_non_nullable
              as int,
      calculablePrice: null == calculablePrice
          ? _value.calculablePrice
          : calculablePrice // ignore: cast_nullable_to_non_nullable
              as int,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      currentStock: null == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as int,
      isDigital: null == isDigital
          ? _value.isDigital
          : isDigital // ignore: cast_nullable_to_non_nullable
              as bool,
      isWishlist: null == isWishlist
          ? _value.isWishlist
          : isWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      countReviews: null == countReviews
          ? _value.countReviews
          : countReviews // ignore: cast_nullable_to_non_nullable
              as int,
      soldByType: null == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String,
      soldByName: null == soldByName
          ? _value.soldByName
          : soldByName // ignore: cast_nullable_to_non_nullable
              as String,
      shop: null == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewsModel>?,
      isResale: null == isResale
          ? _value.isResale
          : isResale // ignore: cast_nullable_to_non_nullable
              as bool,
      resellerId: null == resellerId
          ? _value.resellerId
          : resellerId // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoProvider: freezed == videoProvider
          ? _value.videoProvider
          : videoProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLink: freezed == videoLink
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProductDetailsModel extends _ProductDetailsModel {
  const _$_ProductDetailsModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'thumbnail_image') required this.thumbnailImage,
      @JsonKey(name: 'is_multiple') required this.isMultiple,
      @JsonKey(name: 'price_high_low_discount')
      required this.priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') required this.priceHighLow,
      @JsonKey(name: 'has_discount') required this.hasDiscount,
      @JsonKey(name: 'discount') required this.discount,
      @JsonKey(name: 'stroked_price') required this.strokedPrice,
      @JsonKey(name: 'main_price') required this.mainPrice,
      @JsonKey(name: 'choice_options')
      required final List<ProductOptionsModel>? choiceOptions,
      @JsonKey(name: 'min_qty') required this.minQty,
      @JsonKey(name: 'calculable_price') required this.calculablePrice,
      @JsonKey(name: 'currency_symbol') required this.currencySymbol,
      @JsonKey(name: 'current_stock') required this.currentStock,
      @JsonKey(name: 'tags') required final List<String>? tags,
      @JsonKey(name: 'rating') required this.rating,
      @JsonKey(name: 'sales') required this.sales,
      @JsonKey(name: 'is_digital') required this.isDigital,
      @JsonKey(name: 'is_wishlist') required this.isWishlist,
      @JsonKey(name: 'seller_id') required this.sellerId,
      @JsonKey(name: 'count_reviews') required this.countReviews,
      @JsonKey(name: 'sold_by_type') required this.soldByType,
      @JsonKey(name: 'sold_by_name') required this.soldByName,
      @JsonKey(name: 'shop') required this.shop,
      @JsonKey(name: 'reviews') required final List<ReviewsModel>? reviews,
      @JsonKey(name: 'is_resale') required this.isResale,
      @JsonKey(name: 'reseller_id') required this.resellerId,
      @JsonKey(name: 'category') required this.category,
      @JsonKey(name: 'brand') required this.brand,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'video_provider') this.videoProvider,
      @JsonKey(name: 'video_link') this.videoLink,
      @JsonKey(name: 'category_name') required this.categoryName,
      @JsonKey(name: 'brand_name') required this.brandName})
      : _choiceOptions = choiceOptions,
        _tags = tags,
        _reviews = reviews,
        super._();

  factory _$_ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsModelFromJson(json);

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
  @JsonKey(name: 'is_multiple')
  final bool isMultiple;
  @override
  @JsonKey(name: 'price_high_low_discount')
  final String priceHighLowDiscount;
  @override
  @JsonKey(name: 'price_high_low')
  final String priceHighLow;
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
  final List<ProductOptionsModel>? _choiceOptions;
  @override
  @JsonKey(name: 'choice_options')
  List<ProductOptionsModel>? get choiceOptions {
    final value = _choiceOptions;
    if (value == null) return null;
    if (_choiceOptions is EqualUnmodifiableListView) return _choiceOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'min_qty')
  final int minQty;
  @override
  @JsonKey(name: 'calculable_price')
  final int calculablePrice;
  @override
  @JsonKey(name: 'currency_symbol')
  final String currencySymbol;
  @override
  @JsonKey(name: 'current_stock')
  final int currentStock;
  final List<String>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'rating')
  final int rating;
  @override
  @JsonKey(name: 'sales')
  final int sales;
  @override
  @JsonKey(name: 'is_digital')
  final bool isDigital;
  @override
  @JsonKey(name: 'is_wishlist')
  final bool isWishlist;
  @override
  @JsonKey(name: 'seller_id')
  final int sellerId;
  @override
  @JsonKey(name: 'count_reviews')
  final int countReviews;
  @override
  @JsonKey(name: 'sold_by_type')
  final String soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  final String soldByName;
  @override
  @JsonKey(name: 'shop')
  final ShopModel shop;
  final List<ReviewsModel>? _reviews;
  @override
  @JsonKey(name: 'reviews')
  List<ReviewsModel>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_resale')
  final bool isResale;
  @override
  @JsonKey(name: 'reseller_id')
  final int resellerId;
  @override
  @JsonKey(name: 'category')
  final CategoryModel category;
  @override
  @JsonKey(name: 'brand')
  final BrandModel brand;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'video_provider')
  final String? videoProvider;
  @override
  @JsonKey(name: 'video_link')
  final String? videoLink;
  @override
  @JsonKey(name: 'category_name')
  final String categoryName;
  @override
  @JsonKey(name: 'brand_name')
  final String brandName;

  @override
  String toString() {
    return 'ProductDetailsModel(id: $id, name: $name, thumbnailImage: $thumbnailImage, isMultiple: $isMultiple, priceHighLowDiscount: $priceHighLowDiscount, priceHighLow: $priceHighLow, hasDiscount: $hasDiscount, discount: $discount, strokedPrice: $strokedPrice, mainPrice: $mainPrice, choiceOptions: $choiceOptions, minQty: $minQty, calculablePrice: $calculablePrice, currencySymbol: $currencySymbol, currentStock: $currentStock, tags: $tags, rating: $rating, sales: $sales, isDigital: $isDigital, isWishlist: $isWishlist, sellerId: $sellerId, countReviews: $countReviews, soldByType: $soldByType, soldByName: $soldByName, shop: $shop, reviews: $reviews, isResale: $isResale, resellerId: $resellerId, category: $category, brand: $brand, description: $description, videoProvider: $videoProvider, videoLink: $videoLink, categoryName: $categoryName, brandName: $brandName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnailImage, thumbnailImage) ||
                other.thumbnailImage == thumbnailImage) &&
            (identical(other.isMultiple, isMultiple) ||
                other.isMultiple == isMultiple) &&
            (identical(other.priceHighLowDiscount, priceHighLowDiscount) ||
                other.priceHighLowDiscount == priceHighLowDiscount) &&
            (identical(other.priceHighLow, priceHighLow) ||
                other.priceHighLow == priceHighLow) &&
            (identical(other.hasDiscount, hasDiscount) ||
                other.hasDiscount == hasDiscount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.strokedPrice, strokedPrice) ||
                other.strokedPrice == strokedPrice) &&
            (identical(other.mainPrice, mainPrice) ||
                other.mainPrice == mainPrice) &&
            const DeepCollectionEquality()
                .equals(other._choiceOptions, _choiceOptions) &&
            (identical(other.minQty, minQty) || other.minQty == minQty) &&
            (identical(other.calculablePrice, calculablePrice) ||
                other.calculablePrice == calculablePrice) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.currentStock, currentStock) ||
                other.currentStock == currentStock) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.sales, sales) || other.sales == sales) &&
            (identical(other.isDigital, isDigital) ||
                other.isDigital == isDigital) &&
            (identical(other.isWishlist, isWishlist) ||
                other.isWishlist == isWishlist) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.countReviews, countReviews) ||
                other.countReviews == countReviews) &&
            (identical(other.soldByType, soldByType) ||
                other.soldByType == soldByType) &&
            (identical(other.soldByName, soldByName) ||
                other.soldByName == soldByName) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.isResale, isResale) ||
                other.isResale == isResale) &&
            (identical(other.resellerId, resellerId) ||
                other.resellerId == resellerId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.videoProvider, videoProvider) ||
                other.videoProvider == videoProvider) &&
            (identical(other.videoLink, videoLink) ||
                other.videoLink == videoLink) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        thumbnailImage,
        isMultiple,
        priceHighLowDiscount,
        priceHighLow,
        hasDiscount,
        discount,
        strokedPrice,
        mainPrice,
        const DeepCollectionEquality().hash(_choiceOptions),
        minQty,
        calculablePrice,
        currencySymbol,
        currentStock,
        const DeepCollectionEquality().hash(_tags),
        rating,
        sales,
        isDigital,
        isWishlist,
        sellerId,
        countReviews,
        soldByType,
        soldByName,
        shop,
        const DeepCollectionEquality().hash(_reviews),
        isResale,
        resellerId,
        category,
        brand,
        description,
        videoProvider,
        videoLink,
        categoryName,
        brandName
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailsModelCopyWith<_$_ProductDetailsModel> get copyWith =>
      __$$_ProductDetailsModelCopyWithImpl<_$_ProductDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailsModelToJson(
      this,
    );
  }
}

abstract class _ProductDetailsModel extends ProductDetailsModel {
  const factory _ProductDetailsModel(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'thumbnail_image') required final String thumbnailImage,
      @JsonKey(name: 'is_multiple') required final bool isMultiple,
      @JsonKey(name: 'price_high_low_discount')
      required final String priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') required final String priceHighLow,
      @JsonKey(name: 'has_discount') required final bool hasDiscount,
      @JsonKey(name: 'discount') required final String discount,
      @JsonKey(name: 'stroked_price') required final String strokedPrice,
      @JsonKey(name: 'main_price') required final String mainPrice,
      @JsonKey(name: 'choice_options')
      required final List<ProductOptionsModel>? choiceOptions,
      @JsonKey(name: 'min_qty') required final int minQty,
      @JsonKey(name: 'calculable_price') required final int calculablePrice,
      @JsonKey(name: 'currency_symbol') required final String currencySymbol,
      @JsonKey(name: 'current_stock') required final int currentStock,
      @JsonKey(name: 'tags') required final List<String>? tags,
      @JsonKey(name: 'rating') required final int rating,
      @JsonKey(name: 'sales') required final int sales,
      @JsonKey(name: 'is_digital') required final bool isDigital,
      @JsonKey(name: 'is_wishlist') required final bool isWishlist,
      @JsonKey(name: 'seller_id') required final int sellerId,
      @JsonKey(name: 'count_reviews') required final int countReviews,
      @JsonKey(name: 'sold_by_type') required final String soldByType,
      @JsonKey(name: 'sold_by_name') required final String soldByName,
      @JsonKey(name: 'shop') required final ShopModel shop,
      @JsonKey(name: 'reviews') required final List<ReviewsModel>? reviews,
      @JsonKey(name: 'is_resale') required final bool isResale,
      @JsonKey(name: 'reseller_id') required final int resellerId,
      @JsonKey(name: 'category') required final CategoryModel category,
      @JsonKey(name: 'brand') required final BrandModel brand,
      @JsonKey(name: 'description') required final String description,
      @JsonKey(name: 'video_provider') final String? videoProvider,
      @JsonKey(name: 'video_link') final String? videoLink,
      @JsonKey(name: 'category_name') required final String categoryName,
      @JsonKey(name: 'brand_name')
      required final String brandName}) = _$_ProductDetailsModel;
  const _ProductDetailsModel._() : super._();

  factory _ProductDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailsModel.fromJson;

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
  @JsonKey(name: 'is_multiple')
  bool get isMultiple;
  @override
  @JsonKey(name: 'price_high_low_discount')
  String get priceHighLowDiscount;
  @override
  @JsonKey(name: 'price_high_low')
  String get priceHighLow;
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
  @JsonKey(name: 'choice_options')
  List<ProductOptionsModel>? get choiceOptions;
  @override
  @JsonKey(name: 'min_qty')
  int get minQty;
  @override
  @JsonKey(name: 'calculable_price')
  int get calculablePrice;
  @override
  @JsonKey(name: 'currency_symbol')
  String get currencySymbol;
  @override
  @JsonKey(name: 'current_stock')
  int get currentStock;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags;
  @override
  @JsonKey(name: 'rating')
  int get rating;
  @override
  @JsonKey(name: 'sales')
  int get sales;
  @override
  @JsonKey(name: 'is_digital')
  bool get isDigital;
  @override
  @JsonKey(name: 'is_wishlist')
  bool get isWishlist;
  @override
  @JsonKey(name: 'seller_id')
  int get sellerId;
  @override
  @JsonKey(name: 'count_reviews')
  int get countReviews;
  @override
  @JsonKey(name: 'sold_by_type')
  String get soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  String get soldByName;
  @override
  @JsonKey(name: 'shop')
  ShopModel get shop;
  @override
  @JsonKey(name: 'reviews')
  List<ReviewsModel>? get reviews;
  @override
  @JsonKey(name: 'is_resale')
  bool get isResale;
  @override
  @JsonKey(name: 'reseller_id')
  int get resellerId;
  @override
  @JsonKey(name: 'category')
  CategoryModel get category;
  @override
  @JsonKey(name: 'brand')
  BrandModel get brand;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'video_provider')
  String? get videoProvider;
  @override
  @JsonKey(name: 'video_link')
  String? get videoLink;
  @override
  @JsonKey(name: 'category_name')
  String get categoryName;
  @override
  @JsonKey(name: 'brand_name')
  String get brandName;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailsModelCopyWith<_$_ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
