import 'package:chatify/core/di/injection.dart';
import 'package:chatify/presentation/bloc/chat_cubit/chat_cubit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final ChatCubit _chatCubit;

  @override
  void initState() {
    super.initState();

    _chatCubit = getIt<ChatCubit>();

    _connectSocket();
  }

  Future<void> _connectSocket() async {
    try {
      await _chatCubit.connect();

      debugPrint("✅ Socket Connected");

      await _chatCubit.sendMessage("Hello FastAPI");

      debugPrint("📤 Dummy message sent");
    } catch (e) {
      debugPrint("❌ Socket Error: $e");
    }
  }

  @override
  void dispose() {
    _chatCubit.disconnect();
    _chatCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Checking Socket Connection...")),
    );
  }
}
