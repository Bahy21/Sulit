// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StateModel _$StateModelFromJson(Map<String, dynamic> json) {
  return _StateModel.fromJson(json);
}

/// @nodoc
mixin _$StateModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  CountryModel? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateModelCopyWith<StateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateModelCopyWith<$Res> {
  factory $StateModelCopyWith(
          StateModel value, $Res Function(StateModel) then) =
      _$StateModelCopyWithImpl<$Res, StateModel>;
  @useResult
  $Res call({int id, String name, CountryModel? country});

  $CountryModelCopyWith<$Res>? get country;
}

/// @nodoc
class _$StateModelCopyWithImpl<$Res, $Val extends StateModel>
    implements $StateModelCopyWith<$Res> {
  _$StateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = freezed,
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
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryModelCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryModelCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StateModelCopyWith<$Res>
    implements $StateModelCopyWith<$Res> {
  factory _$$_StateModelCopyWith(
          _$_StateModel value, $Res Function(_$_StateModel) then) =
      __$$_StateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, CountryModel? country});

  @override
  $CountryModelCopyWith<$Res>? get country;
}

/// @nodoc
class __$$_StateModelCopyWithImpl<$Res>
    extends _$StateModelCopyWithImpl<$Res, _$_StateModel>
    implements _$$_StateModelCopyWith<$Res> {
  __$$_StateModelCopyWithImpl(
      _$_StateModel _value, $Res Function(_$_StateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = freezed,
  }) {
    return _then(_$_StateModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_StateModel extends _StateModel {
  const _$_StateModel({required this.id, required this.name, this.country})
      : super._();

  factory _$_StateModel.fromJson(Map<String, dynamic> json) =>
      _$$_StateModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final CountryModel? country;

  @override
  String toString() {
    return 'StateModel(id: $id, name: $name, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateModelCopyWith<_$_StateModel> get copyWith =>
      __$$_StateModelCopyWithImpl<_$_StateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateModelToJson(
      this,
    );
  }
}

abstract class _StateModel extends StateModel {
  const factory _StateModel(
      {required final int id,
      required final String name,
      final CountryModel? country}) = _$_StateModel;
  const _StateModel._() : super._();

  factory _StateModel.fromJson(Map<String, dynamic> json) =
      _$_StateModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  CountryModel? get country;
  @override
  @JsonKey(ignore: true)
  _$$_StateModelCopyWith<_$_StateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
