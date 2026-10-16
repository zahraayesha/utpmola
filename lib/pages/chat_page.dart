import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../data/dummy.dart';
import '../widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined),
            onPressed: () {},
          ),
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: ListView.builder(
        itemCount: daftarChat.length,
        itemBuilder: (context, i) => ChatTile(chat: daftarChat[i]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: waGreen,
        foregroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
    );
  }
}
