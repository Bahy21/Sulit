// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_reply_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketReplyModel _$$_TicketReplyModelFromJson(Map<String, dynamic> json) =>
    _$_TicketReplyModel(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      reply: json['reply'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TicketReplyModelToJson(_$_TicketReplyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'reply': instance.reply,
      'user': instance.user.toJson(),
    };
