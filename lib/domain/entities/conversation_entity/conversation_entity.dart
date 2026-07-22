import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_entity.freezed.dart';
part 'conversation_entity.g.dart';

@freezed
abstract class ConversationEntity with _$ConversationEntity {
  const factory ConversationEntity({
    required int id,

    @JsonKey(name: 'is_group') required bool isGroup,

    required String name,

    @JsonKey(name: 'created_at') required String createdAt,

    String? lastMessage,
  }) = _ConversationEntity;

  factory ConversationEntity.fromJson(Map<String, dynamic> json) =>
      _$ConversationEntityFromJson(json);
}
