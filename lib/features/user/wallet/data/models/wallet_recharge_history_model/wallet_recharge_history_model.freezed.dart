// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_recharge_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletRechargeHistoryModel _$WalletRechargeHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _WalletRechargeHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$WalletRechargeHistoryModel {
  List<WalletItemModel> get wallets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletRechargeHistoryModelCopyWith<WalletRechargeHistoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletRechargeHistoryModelCopyWith<$Res> {
  factory $WalletRechargeHistoryModelCopyWith(WalletRechargeHistoryModel value,
          $Res Function(WalletRechargeHistoryModel) then) =
      _$WalletRechargeHistoryModelCopyWithImpl<$Res,
          WalletRechargeHistoryModel>;
  @useResult
  $Res call({List<WalletItemModel> wallets});
}

/// @nodoc
class _$WalletRechargeHistoryModelCopyWithImpl<$Res,
        $Val extends WalletRechargeHistoryModel>
    implements $WalletRechargeHistoryModelCopyWith<$Res> {
  _$WalletRechargeHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallets = null,
  }) {
    return _then(_value.copyWith(
      wallets: null == wallets
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<WalletItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalletRechargeHistoryModelCopyWith<$Res>
    implements $WalletRechargeHistoryModelCopyWith<$Res> {
  factory _$$_WalletRechargeHistoryModelCopyWith(
          _$_WalletRechargeHistoryModel value,
          $Res Function(_$_WalletRechargeHistoryModel) then) =
      __$$_WalletRechargeHistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WalletItemModel> wallets});
}

/// @nodoc
class __$$_WalletRechargeHistoryModelCopyWithImpl<$Res>
    extends _$WalletRechargeHistoryModelCopyWithImpl<$Res,
        _$_WalletRechargeHistoryModel>
    implements _$$_WalletRechargeHistoryModelCopyWith<$Res> {
  __$$_WalletRechargeHistoryModelCopyWithImpl(
      _$_WalletRechargeHistoryModel _value,
      $Res Function(_$_WalletRechargeHistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallets = null,
  }) {
    return _then(_$_WalletRechargeHistoryModel(
      wallets: null == wallets
          ? _value._wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<WalletItemModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WalletRechargeHistoryModel extends _WalletRechargeHistoryModel {
  const _$_WalletRechargeHistoryModel(
      {required final List<WalletItemModel> wallets})
      : _wallets = wallets,
        super._();

  factory _$_WalletRechargeHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_WalletRechargeHistoryModelFromJson(json);

  final List<WalletItemModel> _wallets;
  @override
  List<WalletItemModel> get wallets {
    if (_wallets is EqualUnmodifiableListView) return _wallets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wallets);
  }

  @override
  String toString() {
    return 'WalletRechargeHistoryModel(wallets: $wallets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletRechargeHistoryModel &&
            const DeepCollectionEquality().equals(other._wallets, _wallets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_wallets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletRechargeHistoryModelCopyWith<_$_WalletRechargeHistoryModel>
      get copyWith => __$$_WalletRechargeHistoryModelCopyWithImpl<
          _$_WalletRechargeHistoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletRechargeHistoryModelToJson(
      this,
    );
  }
}

abstract class _WalletRechargeHistoryModel extends WalletRechargeHistoryModel {
  const factory _WalletRechargeHistoryModel(
          {required final List<WalletItemModel> wallets}) =
      _$_WalletRechargeHistoryModel;
  const _WalletRechargeHistoryModel._() : super._();

  factory _WalletRechargeHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_WalletRechargeHistoryModel.fromJson;

  @override
  List<WalletItemModel> get wallets;
  @override
  @JsonKey(ignore: true)
  _$$_WalletRechargeHistoryModelCopyWith<_$_WalletRechargeHistoryModel>
      get copyWith => throw _privateConstructorUsedError;
}
