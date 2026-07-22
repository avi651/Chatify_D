// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConversationEntity _$ConversationEntityFromJson(Map<String, dynamic> json) =>
    _ConversationEntity(
      id: (json['id'] as num).toInt(),
      isGroup: json['is_group'] as bool,
      name: json['name'] as String,
      createdAt: json['created_at'] as String,
      lastMessage: json['lastMessage'] as String?,
    );

Map<String, dynamic> _$ConversationEntityToJson(_ConversationEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_group': instance.isGroup,
      'name': instance.name,
      'created_at': instance.createdAt,
      'lastMessage': instance.lastMessage,
    };
