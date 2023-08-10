// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetailsModel _$UserDetailsModelFromJson(Map<String, dynamic> json) {
  return _UserDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$UserDetailsModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_original')
  String get avatarOriginal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsModelCopyWith<UserDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsModelCopyWith<$Res> {
  factory $UserDetailsModelCopyWith(
          UserDetailsModel value, $Res Function(UserDetailsModel) then) =
      _$UserDetailsModelCopyWithImpl<$Res, UserDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'avatar') String avatar,
      @JsonKey(name: 'avatar_original') String avatarOriginal});
}

/// @nodoc
class _$UserDetailsModelCopyWithImpl<$Res, $Val extends UserDetailsModel>
    implements $UserDetailsModelCopyWith<$Res> {
  _$UserDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = null,
    Object? avatarOriginal = null,
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
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      avatarOriginal: null == avatarOriginal
          ? _value.avatarOriginal
          : avatarOriginal // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDetailsModelCopyWith<$Res>
    implements $UserDetailsModelCopyWith<$Res> {
  factory _$$_UserDetailsModelCopyWith(
          _$_UserDetailsModel value, $Res Function(_$_UserDetailsModel) then) =
      __$$_UserDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'avatar') String avatar,
      @JsonKey(name: 'avatar_original') String avatarOriginal});
}

/// @nodoc
class __$$_UserDetailsModelCopyWithImpl<$Res>
    extends _$UserDetailsModelCopyWithImpl<$Res, _$_UserDetailsModel>
    implements _$$_UserDetailsModelCopyWith<$Res> {
  __$$_UserDetailsModelCopyWithImpl(
      _$_UserDetailsModel _value, $Res Function(_$_UserDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = null,
    Object? avatarOriginal = null,
  }) {
    return _then(_$_UserDetailsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      avatarOriginal: null == avatarOriginal
          ? _value.avatarOriginal
          : avatarOriginal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserDetailsModel extends _UserDetailsModel {
  const _$_UserDetailsModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'avatar') required this.avatar,
      @JsonKey(name: 'avatar_original') required this.avatarOriginal})
      : super._();

  factory _$_UserDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailsModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'avatar')
  final String avatar;
  @override
  @JsonKey(name: 'avatar_original')
  final String avatarOriginal;

  @override
  String toString() {
    return 'UserDetailsModel(id: $id, name: $name, avatar: $avatar, avatarOriginal: $avatarOriginal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetailsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.avatarOriginal, avatarOriginal) ||
                other.avatarOriginal == avatarOriginal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, avatar, avatarOriginal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDetailsModelCopyWith<_$_UserDetailsModel> get copyWith =>
      __$$_UserDetailsModelCopyWithImpl<_$_UserDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailsModelToJson(
      this,
    );
  }
}

abstract class _UserDetailsModel extends UserDetailsModel {
  const factory _UserDetailsModel(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'avatar') required final String avatar,
      @JsonKey(name: 'avatar_original')
      required final String avatarOriginal}) = _$_UserDetailsModel;
  const _UserDetailsModel._() : super._();

  factory _UserDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_UserDetailsModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'avatar')
  String get avatar;
  @override
  @JsonKey(name: 'avatar_original')
  String get avatarOriginal;
  @override
  @JsonKey(ignore: true)
  _$$_UserDetailsModelCopyWith<_$_UserDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
