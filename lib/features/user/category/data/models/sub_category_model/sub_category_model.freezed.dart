// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubCategoryModel _$SubCategoryModelFromJson(Map<String, dynamic> json) {
  return _SubCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$SubCategoryModel {
  @JsonKey(name: 'category')
  CategoryModel get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  List<CategoryModel> get cats => throw _privateConstructorUsedError;
  @JsonKey(name: 'children_categories')
  List<CategoryModel> get subCats => throw _privateConstructorUsedError;
  @JsonKey(name: 'brands')
  List<BrandModel> get brands => throw _privateConstructorUsedError;
  @JsonKey(name: 'colors')
  List<ColorModel> get colors => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributes')
  List<AttributesModel> get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_range')
  PriceRangeModel get priceRange =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'section_products')
//     required SectionPaginationModel allProducts,
  int? get selectedId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCategoryModelCopyWith<SubCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryModelCopyWith<$Res> {
  factory $SubCategoryModelCopyWith(
          SubCategoryModel value, $Res Function(SubCategoryModel) then) =
      _$SubCategoryModelCopyWithImpl<$Res, SubCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'category') CategoryModel category,
      @JsonKey(name: 'categories') List<CategoryModel> cats,
      @JsonKey(name: 'children_categories') List<CategoryModel> subCats,
      @JsonKey(name: 'brands') List<BrandModel> brands,
      @JsonKey(name: 'colors') List<ColorModel> colors,
      @JsonKey(name: 'attributes') List<AttributesModel> attributes,
      @JsonKey(name: 'price_range') PriceRangeModel priceRange,
      int? selectedId});

  $CategoryModelCopyWith<$Res> get category;
  $PriceRangeModelCopyWith<$Res> get priceRange;
}

/// @nodoc
class _$SubCategoryModelCopyWithImpl<$Res, $Val extends SubCategoryModel>
    implements $SubCategoryModelCopyWith<$Res> {
  _$SubCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? cats = null,
    Object? subCats = null,
    Object? brands = null,
    Object? colors = null,
    Object? attributes = null,
    Object? priceRange = null,
    Object? selectedId = freezed,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      cats: null == cats
          ? _value.cats
          : cats // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      subCats: null == subCats
          ? _value.subCats
          : subCats // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      brands: null == brands
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandModel>,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorModel>,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<AttributesModel>,
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as PriceRangeModel,
      selectedId: freezed == selectedId
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
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
  $PriceRangeModelCopyWith<$Res> get priceRange {
    return $PriceRangeModelCopyWith<$Res>(_value.priceRange, (value) {
      return _then(_value.copyWith(priceRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SubCategoryModelCopyWith<$Res>
    implements $SubCategoryModelCopyWith<$Res> {
  factory _$$_SubCategoryModelCopyWith(
          _$_SubCategoryModel value, $Res Function(_$_SubCategoryModel) then) =
      __$$_SubCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'category') CategoryModel category,
      @JsonKey(name: 'categories') List<CategoryModel> cats,
      @JsonKey(name: 'children_categories') List<CategoryModel> subCats,
      @JsonKey(name: 'brands') List<BrandModel> brands,
      @JsonKey(name: 'colors') List<ColorModel> colors,
      @JsonKey(name: 'attributes') List<AttributesModel> attributes,
      @JsonKey(name: 'price_range') PriceRangeModel priceRange,
      int? selectedId});

  @override
  $CategoryModelCopyWith<$Res> get category;
  @override
  $PriceRangeModelCopyWith<$Res> get priceRange;
}

/// @nodoc
class __$$_SubCategoryModelCopyWithImpl<$Res>
    extends _$SubCategoryModelCopyWithImpl<$Res, _$_SubCategoryModel>
    implements _$$_SubCategoryModelCopyWith<$Res> {
  __$$_SubCategoryModelCopyWithImpl(
      _$_SubCategoryModel _value, $Res Function(_$_SubCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? cats = null,
    Object? subCats = null,
    Object? brands = null,
    Object? colors = null,
    Object? attributes = null,
    Object? priceRange = null,
    Object? selectedId = freezed,
  }) {
    return _then(_$_SubCategoryModel(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      cats: null == cats
          ? _value._cats
          : cats // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      subCats: null == subCats
          ? _value._subCats
          : subCats // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      brands: null == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandModel>,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorModel>,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<AttributesModel>,
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as PriceRangeModel,
      selectedId: freezed == selectedId
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SubCategoryModel extends _SubCategoryModel {
  const _$_SubCategoryModel(
      {@JsonKey(name: 'category') required this.category,
      @JsonKey(name: 'categories') required final List<CategoryModel> cats,
      @JsonKey(name: 'children_categories')
      required final List<CategoryModel> subCats,
      @JsonKey(name: 'brands') required final List<BrandModel> brands,
      @JsonKey(name: 'colors') required final List<ColorModel> colors,
      @JsonKey(name: 'attributes')
      required final List<AttributesModel> attributes,
      @JsonKey(name: 'price_range') required this.priceRange,
      this.selectedId})
      : _cats = cats,
        _subCats = subCats,
        _brands = brands,
        _colors = colors,
        _attributes = attributes,
        super._();

  factory _$_SubCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_SubCategoryModelFromJson(json);

  @override
  @JsonKey(name: 'category')
  final CategoryModel category;
  final List<CategoryModel> _cats;
  @override
  @JsonKey(name: 'categories')
  List<CategoryModel> get cats {
    if (_cats is EqualUnmodifiableListView) return _cats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cats);
  }

  final List<CategoryModel> _subCats;
  @override
  @JsonKey(name: 'children_categories')
  List<CategoryModel> get subCats {
    if (_subCats is EqualUnmodifiableListView) return _subCats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCats);
  }

  final List<BrandModel> _brands;
  @override
  @JsonKey(name: 'brands')
  List<BrandModel> get brands {
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

  final List<ColorModel> _colors;
  @override
  @JsonKey(name: 'colors')
  List<ColorModel> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  final List<AttributesModel> _attributes;
  @override
  @JsonKey(name: 'attributes')
  List<AttributesModel> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  @JsonKey(name: 'price_range')
  final PriceRangeModel priceRange;
// @JsonKey(name: 'section_products')
//     required SectionPaginationModel allProducts,
  @override
  final int? selectedId;

  @override
  String toString() {
    return 'SubCategoryModel(category: $category, cats: $cats, subCats: $subCats, brands: $brands, colors: $colors, attributes: $attributes, priceRange: $priceRange, selectedId: $selectedId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubCategoryModel &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._cats, _cats) &&
            const DeepCollectionEquality().equals(other._subCats, _subCats) &&
            const DeepCollectionEquality().equals(other._brands, _brands) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            (identical(other.selectedId, selectedId) ||
                other.selectedId == selectedId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      category,
      const DeepCollectionEquality().hash(_cats),
      const DeepCollectionEquality().hash(_subCats),
      const DeepCollectionEquality().hash(_brands),
      const DeepCollectionEquality().hash(_colors),
      const DeepCollectionEquality().hash(_attributes),
      priceRange,
      selectedId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubCategoryModelCopyWith<_$_SubCategoryModel> get copyWith =>
      __$$_SubCategoryModelCopyWithImpl<_$_SubCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubCategoryModelToJson(
      this,
    );
  }
}

abstract class _SubCategoryModel extends SubCategoryModel {
  const factory _SubCategoryModel(
      {@JsonKey(name: 'category') required final CategoryModel category,
      @JsonKey(name: 'categories') required final List<CategoryModel> cats,
      @JsonKey(name: 'children_categories')
      required final List<CategoryModel> subCats,
      @JsonKey(name: 'brands') required final List<BrandModel> brands,
      @JsonKey(name: 'colors') required final List<ColorModel> colors,
      @JsonKey(name: 'attributes')
      required final List<AttributesModel> attributes,
      @JsonKey(name: 'price_range') required final PriceRangeModel priceRange,
      final int? selectedId}) = _$_SubCategoryModel;
  const _SubCategoryModel._() : super._();

  factory _SubCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_SubCategoryModel.fromJson;

  @override
  @JsonKey(name: 'category')
  CategoryModel get category;
  @override
  @JsonKey(name: 'categories')
  List<CategoryModel> get cats;
  @override
  @JsonKey(name: 'children_categories')
  List<CategoryModel> get subCats;
  @override
  @JsonKey(name: 'brands')
  List<BrandModel> get brands;
  @override
  @JsonKey(name: 'colors')
  List<ColorModel> get colors;
  @override
  @JsonKey(name: 'attributes')
  List<AttributesModel> get attributes;
  @override
  @JsonKey(name: 'price_range')
  PriceRangeModel get priceRange;
  @override // @JsonKey(name: 'section_products')
//     required SectionPaginationModel allProducts,
  int? get selectedId;
  @override
  @JsonKey(ignore: true)
  _$$_SubCategoryModelCopyWith<_$_SubCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
