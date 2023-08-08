// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_options_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductOptionsModel _$ProductOptionsModelFromJson(Map<String, dynamic> json) {
  return _ProductOptionsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductOptionsModel {
  @JsonKey(name: 'attribute_id')
  int get attributeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'options')
  List<String> get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductOptionsModelCopyWith<ProductOptionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOptionsModelCopyWith<$Res> {
  factory $ProductOptionsModelCopyWith(
          ProductOptionsModel value, $Res Function(ProductOptionsModel) then) =
      _$ProductOptionsModelCopyWithImpl<$Res, ProductOptionsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attribute_id') int attributeId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'options') List<String> options});
}

/// @nodoc
class _$ProductOptionsModelCopyWithImpl<$Res, $Val extends ProductOptionsModel>
    implements $ProductOptionsModelCopyWith<$Res> {
  _$ProductOptionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeId = null,
    Object? title = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      attributeId: null == attributeId
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductOptionsModelCopyWith<$Res>
    implements $ProductOptionsModelCopyWith<$Res> {
  factory _$$_ProductOptionsModelCopyWith(_$_ProductOptionsModel value,
          $Res Function(_$_ProductOptionsModel) then) =
      __$$_ProductOptionsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attribute_id') int attributeId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'options') List<String> options});
}

/// @nodoc
class __$$_ProductOptionsModelCopyWithImpl<$Res>
    extends _$ProductOptionsModelCopyWithImpl<$Res, _$_ProductOptionsModel>
    implements _$$_ProductOptionsModelCopyWith<$Res> {
  __$$_ProductOptionsModelCopyWithImpl(_$_ProductOptionsModel _value,
      $Res Function(_$_ProductOptionsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeId = null,
    Object? title = null,
    Object? options = null,
  }) {
    return _then(_$_ProductOptionsModel(
      attributeId: null == attributeId
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProductOptionsModel extends _ProductOptionsModel {
  const _$_ProductOptionsModel(
      {@JsonKey(name: 'attribute_id') required this.attributeId,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'options') required final List<String> options})
      : _options = options,
        super._();

  factory _$_ProductOptionsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductOptionsModelFromJson(json);

  @override
  @JsonKey(name: 'attribute_id')
  final int attributeId;
  @override
  @JsonKey(name: 'title')
  final String title;
  final List<String> _options;
  @override
  @JsonKey(name: 'options')
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'ProductOptionsModel(attributeId: $attributeId, title: $title, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductOptionsModel &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attributeId, title,
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductOptionsModelCopyWith<_$_ProductOptionsModel> get copyWith =>
      __$$_ProductOptionsModelCopyWithImpl<_$_ProductOptionsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductOptionsModelToJson(
      this,
    );
  }
}

abstract class _ProductOptionsModel extends ProductOptionsModel {
  const factory _ProductOptionsModel(
          {@JsonKey(name: 'attribute_id') required final int attributeId,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'options') required final List<String> options}) =
      _$_ProductOptionsModel;
  const _ProductOptionsModel._() : super._();

  factory _ProductOptionsModel.fromJson(Map<String, dynamic> json) =
      _$_ProductOptionsModel.fromJson;

  @override
  @JsonKey(name: 'attribute_id')
  int get attributeId;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'options')
  List<String> get options;
  @override
  @JsonKey(ignore: true)
  _$$_ProductOptionsModelCopyWith<_$_ProductOptionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
