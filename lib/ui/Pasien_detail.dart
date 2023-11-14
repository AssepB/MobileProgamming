import 'package:flutter/material.dart';
import '../model/pasien.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien_Id;
  final Pasien nomorRmPasien;
  final Pasien namaPasien;
  final Pasien ttlPasien;
  final Pasien noTeleponPasien;
  final Pasien alamatPasien;

  const PasienDetail({
    super.key,
    required this.pasien_Id,
    required this.nomorRmPasien,
    required this.namaPasien,
    required this.ttlPasien,
    required this.noTeleponPasien,
    required this.alamatPasien,
  });
  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Pasien')),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Text("Id Pasien :${widget.pasien_Id.id}"),
          Text("Nomor RM : ${widget.nomorRmPasien.nomor_rm}"),
          Text("Nama : ${widget.namaPasien.nama}"),
          Text("Tanggal Lahir : ${widget.ttlPasien.tanggal_lahir}"),
          Text("Nomor Telepon : ${widget.noTeleponPasien.nomor_telepon}"),
          Text("Alamat : ${widget.alamatPasien.alamat}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Ubah")),
              ElevatedButton(
                onPressed: () {},
                child: Text("Hapus"),
              )
            ],
          )
        ],
      ),
    );
  }
}
