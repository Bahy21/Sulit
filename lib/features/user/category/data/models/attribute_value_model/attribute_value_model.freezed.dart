// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_value_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttributeValueModel _$AttributeValueModelFromJson(Map<String, dynamic> json) {
  return _AttributeValueModel.fromJson(json);
}

/// @nodoc
mixin _$AttributeValueModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'color_code')
  String? get colorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeValueModelCopyWith<AttributeValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeValueModelCopyWith<$Res> {
  factory $AttributeValueModelCopyWith(
          AttributeValueModel value, $Res Function(AttributeValueModel) then) =
      _$AttributeValueModelCopyWithImpl<$Res, AttributeValueModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'value') String value,
      @JsonKey(name: 'color_code') String? colorCode});
}

/// @nodoc
class _$AttributeValueModelCopyWithImpl<$Res, $Val extends AttributeValueModel>
    implements $AttributeValueModelCopyWith<$Res> {
  _$AttributeValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? colorCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttributeValueModelCopyWith<$Res>
    implements $AttributeValueModelCopyWith<$Res> {
  factory _$$_AttributeValueModelCopyWith(_$_AttributeValueModel value,
          $Res Function(_$_AttributeValueModel) then) =
      __$$_AttributeValueModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'value') String value,
      @JsonKey(name: 'color_code') String? colorCode});
}

/// @nodoc
class __$$_AttributeValueModelCopyWithImpl<$Res>
    extends _$AttributeValueModelCopyWithImpl<$Res, _$_AttributeValueModel>
    implements _$$_AttributeValueModelCopyWith<$Res> {
  __$$_AttributeValueModelCopyWithImpl(_$_AttributeValueModel _value,
      $Res Function(_$_AttributeValueModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? colorCode = freezed,
  }) {
    return _then(_$_AttributeValueModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AttributeValueModel extends _AttributeValueModel {
  const _$_AttributeValueModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'value') required this.value,
      @JsonKey(name: 'color_code') this.colorCode})
      : super._();

  factory _$_AttributeValueModel.fromJson(Map<String, dynamic> json) =>
      _$$_AttributeValueModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'value')
  final String value;
  @override
  @JsonKey(name: 'color_code')
  final String? colorCode;

  @override
  String toString() {
    return 'AttributeValueModel(id: $id, value: $value, colorCode: $colorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttributeValueModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, colorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttributeValueModelCopyWith<_$_AttributeValueModel> get copyWith =>
      __$$_AttributeValueModelCopyWithImpl<_$_AttributeValueModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributeValueModelToJson(
      this,
    );
  }
}

abstract class _AttributeValueModel extends AttributeValueModel {
  const factory _AttributeValueModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'value') required final String value,
          @JsonKey(name: 'color_code') final String? colorCode}) =
      _$_AttributeValueModel;
  const _AttributeValueModel._() : super._();

  factory _AttributeValueModel.fromJson(Map<String, dynamic> json) =
      _$_AttributeValueModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(name: 'color_code')
  String? get colorCode;
  @override
  @JsonKey(ignore: true)
  _$$_AttributeValueModelCopyWith<_$_AttributeValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}
