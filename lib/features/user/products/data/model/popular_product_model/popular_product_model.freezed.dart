// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PopularProductModel _$PopularProductModelFromJson(Map<String, dynamic> json) {
  return _PopularProductModel.fromJson(json);
}

/// @nodoc
mixin _$PopularProductModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner')
  String? get banner => throw _privateConstructorUsedError;
  @JsonKey(name: 'products_count')
  int get productsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularProductModelCopyWith<PopularProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularProductModelCopyWith<$Res> {
  factory $PopularProductModelCopyWith(
          PopularProductModel value, $Res Function(PopularProductModel) then) =
      _$PopularProductModelCopyWithImpl<$Res, PopularProductModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'products_count') int productsCount});
}

/// @nodoc
class _$PopularProductModelCopyWithImpl<$Res, $Val extends PopularProductModel>
    implements $PopularProductModelCopyWith<$Res> {
  _$PopularProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? banner = freezed,
    Object? productsCount = null,
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
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      productsCount: null == productsCount
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PopularProductModelCopyWith<$Res>
    implements $PopularProductModelCopyWith<$Res> {
  factory _$$_PopularProductModelCopyWith(_$_PopularProductModel value,
          $Res Function(_$_PopularProductModel) then) =
      __$$_PopularProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'products_count') int productsCount});
}

/// @nodoc
class __$$_PopularProductModelCopyWithImpl<$Res>
    extends _$PopularProductModelCopyWithImpl<$Res, _$_PopularProductModel>
    implements _$$_PopularProductModelCopyWith<$Res> {
  __$$_PopularProductModelCopyWithImpl(_$_PopularProductModel _value,
      $Res Function(_$_PopularProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? banner = freezed,
    Object? productsCount = null,
  }) {
    return _then(_$_PopularProductModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      productsCount: null == productsCount
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PopularProductModel extends _PopularProductModel {
  const _$_PopularProductModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'banner') this.banner,
      @JsonKey(name: 'products_count') required this.productsCount})
      : super._();

  factory _$_PopularProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_PopularProductModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'banner')
  final String? banner;
  @override
  @JsonKey(name: 'products_count')
  final int productsCount;

  @override
  String toString() {
    return 'PopularProductModel(id: $id, name: $name, banner: $banner, productsCount: $productsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PopularProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.productsCount, productsCount) ||
                other.productsCount == productsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, banner, productsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PopularProductModelCopyWith<_$_PopularProductModel> get copyWith =>
      __$$_PopularProductModelCopyWithImpl<_$_PopularProductModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PopularProductModelToJson(
      this,
    );
  }
}

abstract class _PopularProductModel extends PopularProductModel {
  const factory _PopularProductModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'banner') final String? banner,
          @JsonKey(name: 'products_count') required final int productsCount}) =
      _$_PopularProductModel;
  const _PopularProductModel._() : super._();

  factory _PopularProductModel.fromJson(Map<String, dynamic> json) =
      _$_PopularProductModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'banner')
  String? get banner;
  @override
  @JsonKey(name: 'products_count')
  int get productsCount;
  @override
  @JsonKey(ignore: true)
  _$$_PopularProductModelCopyWith<_$_PopularProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
