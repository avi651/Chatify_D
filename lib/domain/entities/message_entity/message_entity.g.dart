// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageEntity _$MessageEntityFromJson(Map<String, dynamic> json) =>
    _MessageEntity(
      id: (json['id'] as num).toInt(),
      senderId: (json['sender_id'] as num).toInt(),
      message: json['message'] as String?,
      messageType: json['message_type'] as String,
      fileUrl: json['file_url'] as String?,
      fileName: json['file_name'] as String?,
      fileSize: (json['file_size'] as num?)?.toInt(),
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$MessageEntityToJson(_MessageEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender_id': instance.senderId,
      'message': instance.message,
      'message_type': instance.messageType,
      'file_url': instance.fileUrl,
      'file_name': instance.fileName,
      'file_size': instance.fileSize,
      'created_at': instance.createdAt,
    };
