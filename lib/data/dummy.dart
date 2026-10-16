class ChatItem {
  final String nama;
  final String pesan;
  final String jam;
  final int belumDibaca;

  const ChatItem(this.nama, this.pesan, this.jam, [this.belumDibaca = 0]);
}

class StatusItem {
  final String nama;
  final String waktu;

  const StatusItem(this.nama, this.waktu);
}

class KomunitasItem {
  final String nama;
  final String info;

  const KomunitasItem(this.nama, this.info);
}

class CallItem {
  final String nama;
  final String waktu;
  final bool masuk;
  final bool terjawab;
  final bool video;

  const CallItem(
    this.nama,
    this.waktu, {
    required this.masuk,
    this.terjawab = true,
    this.video = false,
  });
}

const daftarChat = [
  ChatItem('Budi', 'Besok jadi kumpul?', '09.41', 2),
  ChatItem('Grup Kelas Mola', 'Tugas dikumpul jam 5 sore ya', '08.15', 12),
  ChatItem('Mama', 'Jangan lupa makan ya nak', 'Kemarin'),
  ChatItem('Sari', 'Oke siap, makasih', 'Kemarin'),
  ChatItem('Asdos Mola', 'UTP dinilai di pertemuan 9', 'Senin', 1),
  ChatItem('Rina', 'Foto kemarin udah dikirim', 'Senin'),
  ChatItem('Dimas', 'Hahaha bisa aja kamu', 'Minggu'),
  ChatItem('Grup Keluarga', 'Selamat ulang tahun!', 'Sabtu', 5),
];

const daftarStatus = [
  StatusItem('Budi', 'Hari ini, 10.12'),
  StatusItem('Sari', 'Hari ini, 08.30'),
  StatusItem('Rina', 'Kemarin, 21.05'),
  StatusItem('Dimas', 'Kemarin, 18.47'),
];

const daftarKomunitas = [
  KomunitasItem('Ilmu Komputer Unila', '3 grup'),
  KomunitasItem('Angkatan 2024', '5 grup'),
  KomunitasItem('Asisten Praktikum', '2 grup'),
];

const daftarCall = [
  CallItem('Mama', 'Hari ini, 09.10', masuk: true),
  CallItem('Budi', 'Hari ini, 07.55', masuk: false, video: true),
  CallItem('Sari', 'Kemarin, 20.31', masuk: true, terjawab: false),
  CallItem('Rina', 'Kemarin, 14.02', masuk: false),
  CallItem('Dimas', 'Senin, 19.45', masuk: true, video: true),
  CallItem('Asdos Mola', 'Senin, 10.20', masuk: true, terjawab: false),
];
