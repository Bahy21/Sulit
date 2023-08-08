// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SectionPaginationModel _$SectionPaginationModelFromJson(
    Map<String, dynamic> json) {
  return _SectionPaginationModel.fromJson(json);
}

/// @nodoc
mixin _$SectionPaginationModel {
  List<ProductModel> get products => throw _privateConstructorUsedError;
  PaginationModel get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionPaginationModelCopyWith<SectionPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionPaginationModelCopyWith<$Res> {
  factory $SectionPaginationModelCopyWith(SectionPaginationModel value,
          $Res Function(SectionPaginationModel) then) =
      _$SectionPaginationModelCopyWithImpl<$Res, SectionPaginationModel>;
  @useResult
  $Res call({List<ProductModel> products, PaginationModel pagination});

  $PaginationModelCopyWith<$Res> get pagination;
}

/// @nodoc
class _$SectionPaginationModelCopyWithImpl<$Res,
        $Val extends SectionPaginationModel>
    implements $SectionPaginationModelCopyWith<$Res> {
  _$SectionPaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationModelCopyWith<$Res> get pagination {
    return $PaginationModelCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SectionPaginationModelCopyWith<$Res>
    implements $SectionPaginationModelCopyWith<$Res> {
  factory _$$_SectionPaginationModelCopyWith(_$_SectionPaginationModel value,
          $Res Function(_$_SectionPaginationModel) then) =
      __$$_SectionPaginationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModel> products, PaginationModel pagination});

  @override
  $PaginationModelCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_SectionPaginationModelCopyWithImpl<$Res>
    extends _$SectionPaginationModelCopyWithImpl<$Res,
        _$_SectionPaginationModel>
    implements _$$_SectionPaginationModelCopyWith<$Res> {
  __$$_SectionPaginationModelCopyWithImpl(_$_SectionPaginationModel _value,
      $Res Function(_$_SectionPaginationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? pagination = null,
  }) {
    return _then(_$_SectionPaginationModel(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SectionPaginationModel extends _SectionPaginationModel {
  const _$_SectionPaginationModel(
      {required final List<ProductModel> products, required this.pagination})
      : _products = products,
        super._();

  factory _$_SectionPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$$_SectionPaginationModelFromJson(json);

  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final PaginationModel pagination;

  @override
  String toString() {
    return 'SectionPaginationModel(products: $products, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectionPaginationModel &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_products), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SectionPaginationModelCopyWith<_$_SectionPaginationModel> get copyWith =>
      __$$_SectionPaginationModelCopyWithImpl<_$_SectionPaginationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SectionPaginationModelToJson(
      this,
    );
  }
}

abstract class _SectionPaginationModel extends SectionPaginationModel {
  const factory _SectionPaginationModel(
      {required final List<ProductModel> products,
      required final PaginationModel pagination}) = _$_SectionPaginationModel;
  const _SectionPaginationModel._() : super._();

  factory _SectionPaginationModel.fromJson(Map<String, dynamic> json) =
      _$_SectionPaginationModel.fromJson;

  @override
  List<ProductModel> get products;
  @override
  PaginationModel get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_SectionPaginationModelCopyWith<_$_SectionPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
