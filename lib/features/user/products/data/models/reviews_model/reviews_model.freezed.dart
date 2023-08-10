// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reviews_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewsModel _$ReviewsModelFromJson(Map<String, dynamic> json) {
  return _ReviewsModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewsModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate')
  int get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserDetailsModel get userReview => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewsModelCopyWith<ReviewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsModelCopyWith<$Res> {
  factory $ReviewsModelCopyWith(
          ReviewsModel value, $Res Function(ReviewsModel) then) =
      _$ReviewsModelCopyWithImpl<$Res, ReviewsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'rate') int rate,
      @JsonKey(name: 'comment') String comment,
      @JsonKey(name: 'user') UserDetailsModel userReview,
      @JsonKey(name: 'created_at') String createdAt});

  $UserDetailsModelCopyWith<$Res> get userReview;
}

/// @nodoc
class _$ReviewsModelCopyWithImpl<$Res, $Val extends ReviewsModel>
    implements $ReviewsModelCopyWith<$Res> {
  _$ReviewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rate = null,
    Object? comment = null,
    Object? userReview = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      userReview: null == userReview
          ? _value.userReview
          : userReview // ignore: cast_nullable_to_non_nullable
              as UserDetailsModel,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailsModelCopyWith<$Res> get userReview {
    return $UserDetailsModelCopyWith<$Res>(_value.userReview, (value) {
      return _then(_value.copyWith(userReview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewsModelCopyWith<$Res>
    implements $ReviewsModelCopyWith<$Res> {
  factory _$$_ReviewsModelCopyWith(
          _$_ReviewsModel value, $Res Function(_$_ReviewsModel) then) =
      __$$_ReviewsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'rate') int rate,
      @JsonKey(name: 'comment') String comment,
      @JsonKey(name: 'user') UserDetailsModel userReview,
      @JsonKey(name: 'created_at') String createdAt});

  @override
  $UserDetailsModelCopyWith<$Res> get userReview;
}

/// @nodoc
class __$$_ReviewsModelCopyWithImpl<$Res>
    extends _$ReviewsModelCopyWithImpl<$Res, _$_ReviewsModel>
    implements _$$_ReviewsModelCopyWith<$Res> {
  __$$_ReviewsModelCopyWithImpl(
      _$_ReviewsModel _value, $Res Function(_$_ReviewsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rate = null,
    Object? comment = null,
    Object? userReview = null,
    Object? createdAt = null,
  }) {
    return _then(_$_ReviewsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      userReview: null == userReview
          ? _value.userReview
          : userReview // ignore: cast_nullable_to_non_nullable
              as UserDetailsModel,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ReviewsModel extends _ReviewsModel {
  const _$_ReviewsModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'rate') required this.rate,
      @JsonKey(name: 'comment') required this.comment,
      @JsonKey(name: 'user') required this.userReview,
      @JsonKey(name: 'created_at') required this.createdAt})
      : super._();

  factory _$_ReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewsModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'rate')
  final int rate;
  @override
  @JsonKey(name: 'comment')
  final String comment;
  @override
  @JsonKey(name: 'user')
  final UserDetailsModel userReview;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'ReviewsModel(id: $id, rate: $rate, comment: $comment, userReview: $userReview, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.userReview, userReview) ||
                other.userReview == userReview) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, rate, comment, userReview, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewsModelCopyWith<_$_ReviewsModel> get copyWith =>
      __$$_ReviewsModelCopyWithImpl<_$_ReviewsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewsModelToJson(
      this,
    );
  }
}

abstract class _ReviewsModel extends ReviewsModel {
  const factory _ReviewsModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'rate') required final int rate,
          @JsonKey(name: 'comment') required final String comment,
          @JsonKey(name: 'user') required final UserDetailsModel userReview,
          @JsonKey(name: 'created_at') required final String createdAt}) =
      _$_ReviewsModel;
  const _ReviewsModel._() : super._();

  factory _ReviewsModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewsModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'rate')
  int get rate;
  @override
  @JsonKey(name: 'comment')
  String get comment;
  @override
  @JsonKey(name: 'user')
  UserDetailsModel get userReview;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewsModelCopyWith<_$_ReviewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
