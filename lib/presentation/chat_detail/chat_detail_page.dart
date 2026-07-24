import 'package:chatify/core/di/injection.dart';
import 'package:chatify/presentation/bloc/chat_detail_bloc/chat_detail_bloc.dart';
import 'package:chatify/presentation/bloc/chat_detail_bloc/chat_detail_event.dart';
import 'package:chatify/presentation/bloc/chat_detail_bloc/chat_detail_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/message_bubble.dart';

class ChatDetailPage extends StatelessWidget {
  final int conversationId;

  final String title;

  const ChatDetailPage({
    super.key,
    required this.conversationId,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatDetailBloc>(
      create: (_) {
        final bloc = getIt<ChatDetailBloc>();

        bloc.add(const ChatDetailEvent.loadCurrentUser());

        bloc.add(ChatDetailEvent.loadMessages(conversationId: conversationId));

        return bloc;
      },

      child: Scaffold(
        appBar: AppBar(title: Text(title)),

        body: BlocBuilder<ChatDetailBloc, ChatDetailState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.errorMessage != null) {
              return Center(child: Text(state.errorMessage!));
            }

            if (state.messages.isEmpty) {
              return const Center(child: Text("No Messages"));
            }

            return ListView.builder(
              itemCount: state.messages.length,

              itemBuilder: (context, index) {
                final message = state.messages[index];

                return MessageBubble(
                  message: message.message ?? "",

                  isMe: message.senderId == state.currentUserId,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
