// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flash_sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlashSaleModel _$FlashSaleModelFromJson(Map<String, dynamic> json) {
  return _FlashSaleModel.fromJson(json);
}

/// @nodoc
mixin _$FlashSaleModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get banner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlashSaleModelCopyWith<FlashSaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashSaleModelCopyWith<$Res> {
  factory $FlashSaleModelCopyWith(
          FlashSaleModel value, $Res Function(FlashSaleModel) then) =
      _$FlashSaleModelCopyWithImpl<$Res, FlashSaleModel>;
  @useResult
  $Res call({int id, String title, DateTime date, String banner});
}

/// @nodoc
class _$FlashSaleModelCopyWithImpl<$Res, $Val extends FlashSaleModel>
    implements $FlashSaleModelCopyWith<$Res> {
  _$FlashSaleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? banner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FlashSaleModelCopyWith<$Res>
    implements $FlashSaleModelCopyWith<$Res> {
  factory _$$_FlashSaleModelCopyWith(
          _$_FlashSaleModel value, $Res Function(_$_FlashSaleModel) then) =
      __$$_FlashSaleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, DateTime date, String banner});
}

/// @nodoc
class __$$_FlashSaleModelCopyWithImpl<$Res>
    extends _$FlashSaleModelCopyWithImpl<$Res, _$_FlashSaleModel>
    implements _$$_FlashSaleModelCopyWith<$Res> {
  __$$_FlashSaleModelCopyWithImpl(
      _$_FlashSaleModel _value, $Res Function(_$_FlashSaleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? banner = null,
  }) {
    return _then(_$_FlashSaleModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_FlashSaleModel extends _FlashSaleModel {
  const _$_FlashSaleModel(
      {required this.id,
      required this.title,
      required this.date,
      required this.banner})
      : super._();

  factory _$_FlashSaleModel.fromJson(Map<String, dynamic> json) =>
      _$$_FlashSaleModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final DateTime date;
  @override
  final String banner;

  @override
  String toString() {
    return 'FlashSaleModel(id: $id, title: $title, date: $date, banner: $banner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlashSaleModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.banner, banner) || other.banner == banner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, date, banner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlashSaleModelCopyWith<_$_FlashSaleModel> get copyWith =>
      __$$_FlashSaleModelCopyWithImpl<_$_FlashSaleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlashSaleModelToJson(
      this,
    );
  }
}

abstract class _FlashSaleModel extends FlashSaleModel {
  const factory _FlashSaleModel(
      {required final int id,
      required final String title,
      required final DateTime date,
      required final String banner}) = _$_FlashSaleModel;
  const _FlashSaleModel._() : super._();

  factory _FlashSaleModel.fromJson(Map<String, dynamic> json) =
      _$_FlashSaleModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  DateTime get date;
  @override
  String get banner;
  @override
  @JsonKey(ignore: true)
  _$$_FlashSaleModelCopyWith<_$_FlashSaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
