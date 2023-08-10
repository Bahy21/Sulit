// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_queries_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductQueriesModel _$ProductQueriesModelFromJson(Map<String, dynamic> json) {
  return _ProductQueriesModel.fromJson(json);
}

/// @nodoc
mixin _$ProductQueriesModel {
  @JsonKey(name: 'own_product_queries')
  List<QueriesModel> get ownProductQueries =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'other_product_queries')
  List<QueriesModel> get otherProductQueries =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'queries_offset')
  int get queriesOffset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductQueriesModelCopyWith<ProductQueriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductQueriesModelCopyWith<$Res> {
  factory $ProductQueriesModelCopyWith(
          ProductQueriesModel value, $Res Function(ProductQueriesModel) then) =
      _$ProductQueriesModelCopyWithImpl<$Res, ProductQueriesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'own_product_queries')
      List<QueriesModel> ownProductQueries,
      @JsonKey(name: 'other_product_queries')
      List<QueriesModel> otherProductQueries,
      @JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'queries_offset') int queriesOffset});
}

/// @nodoc
class _$ProductQueriesModelCopyWithImpl<$Res, $Val extends ProductQueriesModel>
    implements $ProductQueriesModelCopyWith<$Res> {
  _$ProductQueriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownProductQueries = null,
    Object? otherProductQueries = null,
    Object? totalCount = null,
    Object? queriesOffset = null,
  }) {
    return _then(_value.copyWith(
      ownProductQueries: null == ownProductQueries
          ? _value.ownProductQueries
          : ownProductQueries // ignore: cast_nullable_to_non_nullable
              as List<QueriesModel>,
      otherProductQueries: null == otherProductQueries
          ? _value.otherProductQueries
          : otherProductQueries // ignore: cast_nullable_to_non_nullable
              as List<QueriesModel>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      queriesOffset: null == queriesOffset
          ? _value.queriesOffset
          : queriesOffset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductQueriesModelCopyWith<$Res>
    implements $ProductQueriesModelCopyWith<$Res> {
  factory _$$_ProductQueriesModelCopyWith(_$_ProductQueriesModel value,
          $Res Function(_$_ProductQueriesModel) then) =
      __$$_ProductQueriesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'own_product_queries')
      List<QueriesModel> ownProductQueries,
      @JsonKey(name: 'other_product_queries')
      List<QueriesModel> otherProductQueries,
      @JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'queries_offset') int queriesOffset});
}

/// @nodoc
class __$$_ProductQueriesModelCopyWithImpl<$Res>
    extends _$ProductQueriesModelCopyWithImpl<$Res, _$_ProductQueriesModel>
    implements _$$_ProductQueriesModelCopyWith<$Res> {
  __$$_ProductQueriesModelCopyWithImpl(_$_ProductQueriesModel _value,
      $Res Function(_$_ProductQueriesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownProductQueries = null,
    Object? otherProductQueries = null,
    Object? totalCount = null,
    Object? queriesOffset = null,
  }) {
    return _then(_$_ProductQueriesModel(
      ownProductQueries: null == ownProductQueries
          ? _value._ownProductQueries
          : ownProductQueries // ignore: cast_nullable_to_non_nullable
              as List<QueriesModel>,
      otherProductQueries: null == otherProductQueries
          ? _value._otherProductQueries
          : otherProductQueries // ignore: cast_nullable_to_non_nullable
              as List<QueriesModel>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      queriesOffset: null == queriesOffset
          ? _value.queriesOffset
          : queriesOffset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProductQueriesModel extends _ProductQueriesModel {
  const _$_ProductQueriesModel(
      {@JsonKey(name: 'own_product_queries')
      required final List<QueriesModel> ownProductQueries,
      @JsonKey(name: 'other_product_queries')
      required final List<QueriesModel> otherProductQueries,
      @JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'queries_offset') required this.queriesOffset})
      : _ownProductQueries = ownProductQueries,
        _otherProductQueries = otherProductQueries,
        super._();

  factory _$_ProductQueriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductQueriesModelFromJson(json);

  final List<QueriesModel> _ownProductQueries;
  @override
  @JsonKey(name: 'own_product_queries')
  List<QueriesModel> get ownProductQueries {
    if (_ownProductQueries is EqualUnmodifiableListView)
      return _ownProductQueries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ownProductQueries);
  }

  final List<QueriesModel> _otherProductQueries;
  @override
  @JsonKey(name: 'other_product_queries')
  List<QueriesModel> get otherProductQueries {
    if (_otherProductQueries is EqualUnmodifiableListView)
      return _otherProductQueries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherProductQueries);
  }

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'queries_offset')
  final int queriesOffset;

  @override
  String toString() {
    return 'ProductQueriesModel(ownProductQueries: $ownProductQueries, otherProductQueries: $otherProductQueries, totalCount: $totalCount, queriesOffset: $queriesOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductQueriesModel &&
            const DeepCollectionEquality()
                .equals(other._ownProductQueries, _ownProductQueries) &&
            const DeepCollectionEquality()
                .equals(other._otherProductQueries, _otherProductQueries) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.queriesOffset, queriesOffset) ||
                other.queriesOffset == queriesOffset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ownProductQueries),
      const DeepCollectionEquality().hash(_otherProductQueries),
      totalCount,
      queriesOffset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductQueriesModelCopyWith<_$_ProductQueriesModel> get copyWith =>
      __$$_ProductQueriesModelCopyWithImpl<_$_ProductQueriesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductQueriesModelToJson(
      this,
    );
  }
}

abstract class _ProductQueriesModel extends ProductQueriesModel {
  const factory _ProductQueriesModel(
          {@JsonKey(name: 'own_product_queries')
          required final List<QueriesModel> ownProductQueries,
          @JsonKey(name: 'other_product_queries')
          required final List<QueriesModel> otherProductQueries,
          @JsonKey(name: 'total_count') required final int totalCount,
          @JsonKey(name: 'queries_offset') required final int queriesOffset}) =
      _$_ProductQueriesModel;
  const _ProductQueriesModel._() : super._();

  factory _ProductQueriesModel.fromJson(Map<String, dynamic> json) =
      _$_ProductQueriesModel.fromJson;

  @override
  @JsonKey(name: 'own_product_queries')
  List<QueriesModel> get ownProductQueries;
  @override
  @JsonKey(name: 'other_product_queries')
  List<QueriesModel> get otherProductQueries;
  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  @JsonKey(name: 'queries_offset')
  int get queriesOffset;
  @override
  @JsonKey(ignore: true)
  _$$_ProductQueriesModelCopyWith<_$_ProductQueriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
