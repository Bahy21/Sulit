// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationModel _$PaginationModelFromJson(Map<String, dynamic> json) {
  return _PaginationModel.fromJson(json);
}

/// @nodoc
mixin _$PaginationModel {
  @JsonKey(name: 'total_items')
  int get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'count_items')
  int get countItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String get nextPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'perv_page_url')
  String get prevPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationModelCopyWith<PaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationModelCopyWith<$Res> {
  factory $PaginationModelCopyWith(
          PaginationModel value, $Res Function(PaginationModel) then) =
      _$PaginationModelCopyWithImpl<$Res, PaginationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_items') int totalItems,
      @JsonKey(name: 'count_items') int countItems,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'next_page_url') String nextPage,
      @JsonKey(name: 'perv_page_url') String prevPage});
}

/// @nodoc
class _$PaginationModelCopyWithImpl<$Res, $Val extends PaginationModel>
    implements $PaginationModelCopyWith<$Res> {
  _$PaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? countItems = null,
    Object? perPage = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? nextPage = null,
    Object? prevPage = null,
  }) {
    return _then(_value.copyWith(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      countItems: null == countItems
          ? _value.countItems
          : countItems // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String,
      prevPage: null == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationModelCopyWith<$Res>
    implements $PaginationModelCopyWith<$Res> {
  factory _$$_PaginationModelCopyWith(
          _$_PaginationModel value, $Res Function(_$_PaginationModel) then) =
      __$$_PaginationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_items') int totalItems,
      @JsonKey(name: 'count_items') int countItems,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'next_page_url') String nextPage,
      @JsonKey(name: 'perv_page_url') String prevPage});
}

/// @nodoc
class __$$_PaginationModelCopyWithImpl<$Res>
    extends _$PaginationModelCopyWithImpl<$Res, _$_PaginationModel>
    implements _$$_PaginationModelCopyWith<$Res> {
  __$$_PaginationModelCopyWithImpl(
      _$_PaginationModel _value, $Res Function(_$_PaginationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? countItems = null,
    Object? perPage = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? nextPage = null,
    Object? prevPage = null,
  }) {
    return _then(_$_PaginationModel(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      countItems: null == countItems
          ? _value.countItems
          : countItems // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String,
      prevPage: null == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PaginationModel extends _PaginationModel {
  const _$_PaginationModel(
      {@JsonKey(name: 'total_items') required this.totalItems,
      @JsonKey(name: 'count_items') required this.countItems,
      @JsonKey(name: 'per_page') required this.perPage,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'current_page') required this.currentPage,
      @JsonKey(name: 'next_page_url') required this.nextPage,
      @JsonKey(name: 'perv_page_url') required this.prevPage})
      : super._();

  factory _$_PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationModelFromJson(json);

  @override
  @JsonKey(name: 'total_items')
  final int totalItems;
  @override
  @JsonKey(name: 'count_items')
  final int countItems;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  @override
  @JsonKey(name: 'next_page_url')
  final String nextPage;
  @override
  @JsonKey(name: 'perv_page_url')
  final String prevPage;

  @override
  String toString() {
    return 'PaginationModel(totalItems: $totalItems, countItems: $countItems, perPage: $perPage, totalPages: $totalPages, currentPage: $currentPage, nextPage: $nextPage, prevPage: $prevPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationModel &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.countItems, countItems) ||
                other.countItems == countItems) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.prevPage, prevPage) ||
                other.prevPage == prevPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalItems, countItems, perPage,
      totalPages, currentPage, nextPage, prevPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationModelCopyWith<_$_PaginationModel> get copyWith =>
      __$$_PaginationModelCopyWithImpl<_$_PaginationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationModelToJson(
      this,
    );
  }
}

abstract class _PaginationModel extends PaginationModel {
  const factory _PaginationModel(
          {@JsonKey(name: 'total_items') required final int totalItems,
          @JsonKey(name: 'count_items') required final int countItems,
          @JsonKey(name: 'per_page') required final int perPage,
          @JsonKey(name: 'total_pages') required final int totalPages,
          @JsonKey(name: 'current_page') required final int currentPage,
          @JsonKey(name: 'next_page_url') required final String nextPage,
          @JsonKey(name: 'perv_page_url') required final String prevPage}) =
      _$_PaginationModel;
  const _PaginationModel._() : super._();

  factory _PaginationModel.fromJson(Map<String, dynamic> json) =
      _$_PaginationModel.fromJson;

  @override
  @JsonKey(name: 'total_items')
  int get totalItems;
  @override
  @JsonKey(name: 'count_items')
  int get countItems;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  @JsonKey(name: 'next_page_url')
  String get nextPage;
  @override
  @JsonKey(name: 'perv_page_url')
  String get prevPage;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationModelCopyWith<_$_PaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
