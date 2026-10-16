import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'pages/chat_page.dart';
import 'pages/status_page.dart';
import 'pages/komunitas_page.dart';
import 'pages/panggilan_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _index = 0;

  final List<Widget> _pages = const [
    ChatPage(),
    StatusPage(),
    KomunitasPage(),
    PanggilanPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _index, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: waDark,
        unselectedItemColor: Colors.black54,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Pembaruan'),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Komunitas'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Panggilan'),
        ],
      ),
    );
  }
}
