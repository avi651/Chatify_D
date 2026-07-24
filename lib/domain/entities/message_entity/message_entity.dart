import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_entity.freezed.dart';
part 'message_entity.g.dart';

@freezed
abstract class MessageEntity with _$MessageEntity {
  const factory MessageEntity({
    required int id,

    @JsonKey(name: 'sender_id') required int senderId,

    String? message,

    @JsonKey(name: 'message_type') required String messageType,

    @JsonKey(name: 'file_url') String? fileUrl,

    @JsonKey(name: 'file_name') String? fileName,

    @JsonKey(name: 'file_size') int? fileSize,

    @JsonKey(name: 'created_at') required String createdAt,
  }) = _MessageEntity;

  factory MessageEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageEntityFromJson(json);
}
