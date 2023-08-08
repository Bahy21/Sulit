// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queries_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueriesModel _$QueriesModelFromJson(Map<String, dynamic> json) {
  return _QueriesModel.fromJson(json);
}

/// @nodoc
mixin _$QueriesModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'question')
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'reply')
  String get reply => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserDetailsModel get userDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueriesModelCopyWith<QueriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueriesModelCopyWith<$Res> {
  factory $QueriesModelCopyWith(
          QueriesModel value, $Res Function(QueriesModel) then) =
      _$QueriesModelCopyWithImpl<$Res, QueriesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'question') String question,
      @JsonKey(name: 'reply') String reply,
      @JsonKey(name: 'user') UserDetailsModel userDetails});

  $UserDetailsModelCopyWith<$Res> get userDetails;
}

/// @nodoc
class _$QueriesModelCopyWithImpl<$Res, $Val extends QueriesModel>
    implements $QueriesModelCopyWith<$Res> {
  _$QueriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? reply = null,
    Object? userDetails = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      reply: null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as String,
      userDetails: null == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetailsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailsModelCopyWith<$Res> get userDetails {
    return $UserDetailsModelCopyWith<$Res>(_value.userDetails, (value) {
      return _then(_value.copyWith(userDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QueriesModelCopyWith<$Res>
    implements $QueriesModelCopyWith<$Res> {
  factory _$$_QueriesModelCopyWith(
          _$_QueriesModel value, $Res Function(_$_QueriesModel) then) =
      __$$_QueriesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'question') String question,
      @JsonKey(name: 'reply') String reply,
      @JsonKey(name: 'user') UserDetailsModel userDetails});

  @override
  $UserDetailsModelCopyWith<$Res> get userDetails;
}

/// @nodoc
class __$$_QueriesModelCopyWithImpl<$Res>
    extends _$QueriesModelCopyWithImpl<$Res, _$_QueriesModel>
    implements _$$_QueriesModelCopyWith<$Res> {
  __$$_QueriesModelCopyWithImpl(
      _$_QueriesModel _value, $Res Function(_$_QueriesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? reply = null,
    Object? userDetails = null,
  }) {
    return _then(_$_QueriesModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      reply: null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as String,
      userDetails: null == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetailsModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_QueriesModel extends _QueriesModel {
  const _$_QueriesModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'question') required this.question,
      @JsonKey(name: 'reply') required this.reply,
      @JsonKey(name: 'user') required this.userDetails})
      : super._();

  factory _$_QueriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_QueriesModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'question')
  final String question;
  @override
  @JsonKey(name: 'reply')
  final String reply;
  @override
  @JsonKey(name: 'user')
  final UserDetailsModel userDetails;

  @override
  String toString() {
    return 'QueriesModel(id: $id, question: $question, reply: $reply, userDetails: $userDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueriesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.reply, reply) || other.reply == reply) &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, question, reply, userDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueriesModelCopyWith<_$_QueriesModel> get copyWith =>
      __$$_QueriesModelCopyWithImpl<_$_QueriesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueriesModelToJson(
      this,
    );
  }
}

abstract class _QueriesModel extends QueriesModel {
  const factory _QueriesModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'question') required final String question,
          @JsonKey(name: 'reply') required final String reply,
          @JsonKey(name: 'user') required final UserDetailsModel userDetails}) =
      _$_QueriesModel;
  const _QueriesModel._() : super._();

  factory _QueriesModel.fromJson(Map<String, dynamic> json) =
      _$_QueriesModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'question')
  String get question;
  @override
  @JsonKey(name: 'reply')
  String get reply;
  @override
  @JsonKey(name: 'user')
  UserDetailsModel get userDetails;
  @override
  @JsonKey(ignore: true)
  _$$_QueriesModelCopyWith<_$_QueriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
