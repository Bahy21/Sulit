// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_recharge_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletRechargeHistoryModel _$$_WalletRechargeHistoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_WalletRechargeHistoryModel(
      wallets: (json['wallets'] as List<dynamic>)
          .map((e) => WalletItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WalletRechargeHistoryModelToJson(
        _$_WalletRechargeHistoryModel instance) =>
    <String, dynamic>{
      'wallets': instance.wallets.map((e) => e.toJson()).toList(),
    };
