import 'package:flutter/material.dart';
import '../model/pegawai.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai_Id;
  final Pegawai namaPegawai;
  final Pegawai ttlPegawai;
  final Pegawai noTeleponPegawai;
  final Pegawai emailPegawai;
  final Pegawai passwordPegawai;

const PegawaiDetail({super.key,
    required this.pegawai_Id,
    required this.namaPegawai,
    required this.ttlPegawai,
    required this.noTeleponPegawai,
    required this.emailPegawai,
    required this.passwordPegawai,


});
  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();

}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Pegawai')),
      body:  Column(
        children: [
          const SizedBox(height: 30),
          Text("Id pegawai : ${widget.pegawai_Id.id}"),
          Text("nama Pegwai : ${widget.namaPegawai.nama}"),
          Text("tanggal lahir pegawai : ${widget.ttlPegawai.tanggal_lahir}"),
          Text("nomor telpon pegawai : ${widget..noTeleponPegawai.nomor_telepon}"),
          Text("email pegawai : ${widget.emailPegawai.email}"),
          Text("password pegawai : ${widget.passwordPegawai.password}"),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Ubah")),
              ElevatedButton(onPressed: () {}, child: Text("Hapus"),)
            ],
          )
        ],
      ),

    );
  }
}