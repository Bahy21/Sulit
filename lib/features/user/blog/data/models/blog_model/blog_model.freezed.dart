// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlogModel _$BlogModelFromJson(Map<String, dynamic> json) {
  return _BlogModel.fromJson(json);
}

/// @nodoc
mixin _$BlogModel {
  int get id => throw _privateConstructorUsedError;
  String get banner => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "short_description")
  String get shortDescription => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogModelCopyWith<BlogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogModelCopyWith<$Res> {
  factory $BlogModelCopyWith(BlogModel value, $Res Function(BlogModel) then) =
      _$BlogModelCopyWithImpl<$Res, BlogModel>;
  @useResult
  $Res call(
      {int id,
      String banner,
      String title,
      String slug,
      String category,
      @JsonKey(name: "short_description") String shortDescription,
      String description});
}

/// @nodoc
class _$BlogModelCopyWithImpl<$Res, $Val extends BlogModel>
    implements $BlogModelCopyWith<$Res> {
  _$BlogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? banner = null,
    Object? title = null,
    Object? slug = null,
    Object? category = null,
    Object? shortDescription = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlogModelCopyWith<$Res> implements $BlogModelCopyWith<$Res> {
  factory _$$_BlogModelCopyWith(
          _$_BlogModel value, $Res Function(_$_BlogModel) then) =
      __$$_BlogModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String banner,
      String title,
      String slug,
      String category,
      @JsonKey(name: "short_description") String shortDescription,
      String description});
}

/// @nodoc
class __$$_BlogModelCopyWithImpl<$Res>
    extends _$BlogModelCopyWithImpl<$Res, _$_BlogModel>
    implements _$$_BlogModelCopyWith<$Res> {
  __$$_BlogModelCopyWithImpl(
      _$_BlogModel _value, $Res Function(_$_BlogModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? banner = null,
    Object? title = null,
    Object? slug = null,
    Object? category = null,
    Object? shortDescription = null,
    Object? description = null,
  }) {
    return _then(_$_BlogModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BlogModel extends _BlogModel {
  const _$_BlogModel(
      {required this.id,
      required this.banner,
      required this.title,
      required this.slug,
      required this.category,
      @JsonKey(name: "short_description") required this.shortDescription,
      required this.description})
      : super._();

  factory _$_BlogModel.fromJson(Map<String, dynamic> json) =>
      _$$_BlogModelFromJson(json);

  @override
  final int id;
  @override
  final String banner;
  @override
  final String title;
  @override
  final String slug;
  @override
  final String category;
  @override
  @JsonKey(name: "short_description")
  final String shortDescription;
  @override
  final String description;

  @override
  String toString() {
    return 'BlogModel(id: $id, banner: $banner, title: $title, slug: $slug, category: $category, shortDescription: $shortDescription, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlogModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, banner, title, slug,
      category, shortDescription, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlogModelCopyWith<_$_BlogModel> get copyWith =>
      __$$_BlogModelCopyWithImpl<_$_BlogModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlogModelToJson(
      this,
    );
  }
}

abstract class _BlogModel extends BlogModel {
  const factory _BlogModel(
      {required final int id,
      required final String banner,
      required final String title,
      required final String slug,
      required final String category,
      @JsonKey(name: "short_description")
      required final String shortDescription,
      required final String description}) = _$_BlogModel;
  const _BlogModel._() : super._();

  factory _BlogModel.fromJson(Map<String, dynamic> json) =
      _$_BlogModel.fromJson;

  @override
  int get id;
  @override
  String get banner;
  @override
  String get title;
  @override
  String get slug;
  @override
  String get category;
  @override
  @JsonKey(name: "short_description")
  String get shortDescription;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_BlogModelCopyWith<_$_BlogModel> get copyWith =>
      throw _privateConstructorUsedError;
}
