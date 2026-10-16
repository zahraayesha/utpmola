import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../data/dummy.dart';

class ChatTile extends StatelessWidget {
  final ChatItem chat;

  const ChatTile({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    final adaPesanBaru = chat.belumDibaca > 0;

    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.green.shade100,
        child: Text(
          chat.nama[0],
          style: const TextStyle(
            color: waDark,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      title: Text(
        chat.nama,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(chat.pesan, maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            chat.jam,
            style: TextStyle(
              fontSize: 12,
              color: adaPesanBaru ? waGreen : Colors.black54,
            ),
          ),
          if (adaPesanBaru) ...[
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
              decoration: const BoxDecoration(
                color: waGreen,
                shape: BoxShape.circle,
              ),
              child: Text(
                '${chat.belumDibaca}',
                style: const TextStyle(color: Colors.white, fontSize: 11),
              ),
            ),
          ],
        ],
      ),
      onTap: () {},
    );
  }
}
