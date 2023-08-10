// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attributes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttributesModel _$AttributesModelFromJson(Map<String, dynamic> json) {
  return _AttributesModel.fromJson(json);
}

/// @nodoc
mixin _$AttributesModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'attribute_values')
  List<AttributeValueModel> get attributesValues =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesModelCopyWith<AttributesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesModelCopyWith<$Res> {
  factory $AttributesModelCopyWith(
          AttributesModel value, $Res Function(AttributesModel) then) =
      _$AttributesModelCopyWithImpl<$Res, AttributesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'attribute_values')
      List<AttributeValueModel> attributesValues});
}

/// @nodoc
class _$AttributesModelCopyWithImpl<$Res, $Val extends AttributesModel>
    implements $AttributesModelCopyWith<$Res> {
  _$AttributesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? attributesValues = null,
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
      attributesValues: null == attributesValues
          ? _value.attributesValues
          : attributesValues // ignore: cast_nullable_to_non_nullable
              as List<AttributeValueModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttributesModelCopyWith<$Res>
    implements $AttributesModelCopyWith<$Res> {
  factory _$$_AttributesModelCopyWith(
          _$_AttributesModel value, $Res Function(_$_AttributesModel) then) =
      __$$_AttributesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'attribute_values')
      List<AttributeValueModel> attributesValues});
}

/// @nodoc
class __$$_AttributesModelCopyWithImpl<$Res>
    extends _$AttributesModelCopyWithImpl<$Res, _$_AttributesModel>
    implements _$$_AttributesModelCopyWith<$Res> {
  __$$_AttributesModelCopyWithImpl(
      _$_AttributesModel _value, $Res Function(_$_AttributesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? attributesValues = null,
  }) {
    return _then(_$_AttributesModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attributesValues: null == attributesValues
          ? _value._attributesValues
          : attributesValues // ignore: cast_nullable_to_non_nullable
              as List<AttributeValueModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AttributesModel extends _AttributesModel {
  const _$_AttributesModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'attribute_values')
      required final List<AttributeValueModel> attributesValues})
      : _attributesValues = attributesValues,
        super._();

  factory _$_AttributesModel.fromJson(Map<String, dynamic> json) =>
      _$$_AttributesModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  final List<AttributeValueModel> _attributesValues;
  @override
  @JsonKey(name: 'attribute_values')
  List<AttributeValueModel> get attributesValues {
    if (_attributesValues is EqualUnmodifiableListView)
      return _attributesValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributesValues);
  }

  @override
  String toString() {
    return 'AttributesModel(id: $id, name: $name, attributesValues: $attributesValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttributesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._attributesValues, _attributesValues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_attributesValues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttributesModelCopyWith<_$_AttributesModel> get copyWith =>
      __$$_AttributesModelCopyWithImpl<_$_AttributesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributesModelToJson(
      this,
    );
  }
}

abstract class _AttributesModel extends AttributesModel {
  const factory _AttributesModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'attribute_values')
          required final List<AttributeValueModel> attributesValues}) =
      _$_AttributesModel;
  const _AttributesModel._() : super._();

  factory _AttributesModel.fromJson(Map<String, dynamic> json) =
      _$_AttributesModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'attribute_values')
  List<AttributeValueModel> get attributesValues;
  @override
  @JsonKey(ignore: true)
  _$$_AttributesModelCopyWith<_$_AttributesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
