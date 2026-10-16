import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../data/dummy.dart';

class KomunitasPage extends StatelessWidget {
  const KomunitasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Komunitas'),
        actions: [
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          // Komunitas baru
          ListTile(
            leading: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Icon(Icons.groups, color: Colors.black54),
                ),
                Positioned(
                  right: -4,
                  bottom: -4,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: waGreen,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: const Icon(Icons.add, size: 12, color: Colors.white),
                  ),
                ),
              ],
            ),
            title: const Text(
              'Komunitas baru',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),

          const Divider(thickness: 6, color: Color(0xFFF2F2F2)),

          // Daftar komunitas
          for (final k in daftarKomunitas)
            ListTile(
              leading: Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(Icons.groups, color: waDark),
              ),
              title: Text(
                k.nama,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(k.info),
              onTap: () {},
            ),
        ],
      ),
    );
  }
}
