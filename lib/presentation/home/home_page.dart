import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/home_bloc/home_bloc.dart';
import '../bloc/home_bloc/home_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chatify")),

      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.conversations.isEmpty) {
            return const Center(child: Text("No Conversations"));
          }

          return ListView.builder(
            itemCount: state.conversations.length,

            itemBuilder: (context, index) {
              final conversation = state.conversations[index];

              return ListTile(
                leading: CircleAvatar(
                  child: Text(
                    conversation.name.isNotEmpty
                        ? conversation.name[0].toUpperCase()
                        : "?",
                  ),
                ),

                title: Text(
                  conversation.name,

                  maxLines: 1,

                  overflow: TextOverflow.ellipsis,
                ),

                subtitle: Text(
                  conversation.lastMessage ??
                      (conversation.isGroup ? "Group" : "Personal Chat"),

                  maxLines: 1,

                  overflow: TextOverflow.ellipsis,
                ),

                trailing: Text(
                  conversation.createdAt.length >= 16
                      ? conversation.createdAt.substring(11, 16)
                      : "",

                  style: const TextStyle(fontSize: 12),
                ),

                onTap: () {
                  context.push(
                    '/chat/${conversation.id}',

                    extra: conversation.name,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
