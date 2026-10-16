import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../data/dummy.dart';
import '../widgets/section_title.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pembaruan'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          // Status saya
          ListTile(
            leading: Stack(
              children: [
                const CircleAvatar(
                  radius: 26,
                  backgroundColor: Color(0xFFE0E0E0),
                  child: Icon(Icons.person, color: Colors.white),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      color: waGreen,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add, size: 14, color: Colors.white),
                  ),
                ),
              ],
            ),
            title: const Text(
              'Status saya',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: const Text('Ketuk untuk menambahkan pembaruan status'),
            onTap: () {},
          ),

          const SectionTitle('Pembaruan terkini'),

          // Status teman (avatar dengan cincin hijau)
          for (final s in daftarStatus)
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: waGreen, width: 2.5),
                ),
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.green.shade100,
                  child: Text(
                    s.nama[0],
                    style: const TextStyle(
                      color: waDark,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              title: Text(
                s.nama,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(s.waktu),
              onTap: () {},
            ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.small(
            backgroundColor: const Color(0xFFE0E0E0),
            foregroundColor: Colors.black87,
            onPressed: () {},
            child: const Icon(Icons.edit),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            backgroundColor: waGreen,
            foregroundColor: Colors.white,
            onPressed: () {},
            child: const Icon(Icons.camera_alt),
          ),
        ],
      ),
    );
  }
}
