import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../data/dummy.dart';
import '../widgets/section_title.dart';

class PanggilanPage extends StatelessWidget {
  const PanggilanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panggilan'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          const SectionTitle('Terbaru'),
          for (final c in daftarCall)
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.green.shade100,
                child: Text(
                  c.nama[0],
                  style: const TextStyle(
                    color: waDark,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                c.nama,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: c.terjawab ? Colors.black : Colors.red,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    c.masuk ? Icons.call_received : Icons.call_made,
                    size: 16,
                    color: c.terjawab ? waGreen : Colors.red,
                  ),
                  const SizedBox(width: 4),
                  Text(c.waktu),
                ],
              ),
              trailing: Icon(
                c.video ? Icons.videocam : Icons.call,
                color: waDark,
              ),
              onTap: () {},
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: waGreen,
        foregroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(Icons.add_call),
      ),
    );
  }
}
