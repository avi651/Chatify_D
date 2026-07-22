import 'package:chatify/domain/entities/conversation_entity/conversation_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<ConversationEntity> conversations,

    @Default(false) bool isConnected,

    String? errorMessage,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState();
}
