import 'package:aplikasi_flutter_pertamaku/model/pasien.dart';
import 'package:aplikasi_flutter_pertamaku/ui/pasien_detail.dart';
import 'package:aplikasi_flutter_pertamaku/ui/poli_item_.dart';
import 'package:flutter/material.dart';
import '../model/poli.dart';
//import 'poli_detail.dart';
//import 'poli_item.dart';
import 'poli_form.dart';
import 'package:aplikasi_flutter_pertamaku/model/pegawai.dart';
import 'package:aplikasi_flutter_pertamaku/ui/pegawai_detail.dart';
//import 'package:aplikasi_flutter_pertamaku/model/poli.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Poli"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => poliform()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT")),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Pegawai"),
              ),
            ),
            onTap: () {
              Pegawai pegawai = Pegawai(
                id: 1,
                nip: "17210220",
                nama: "Nova Ika Ramdani",
                tanggal_lahir: "23-10-2001",
                nomor_telepon: "083898948173",
                email: "novaika@gmail.com",
                password: "xxxxx",
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PegawaiDetail(
                            pegawai_Id: pegawai,
                            namaPegawai: pegawai,
                            ttlPegawai: pegawai,
                            noTeleponPegawai: pegawai,
                            emailPegawai: pegawai,
                            passwordPegawai: pegawai,
                          )));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Pasien"),
              ),
            ),
            onTap: () {
              Pasien pasien = Pasien(
                id: 1,
                nomor_rm: "17210481",
                nama: "Asep Budiman",
                tanggal_lahir: "27-03-2002",
                nomor_telepon: "085710165127",
                alamat: "Cisoka",
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PasienDetail(
                          pasien_Id: pasien,
                          nomorRmPasien: pasien,
                          namaPasien: pasien,
                          ttlPasien: pasien,
                          noTeleponPasien: pasien,
                          alamatPasien: pasien)));
            },
          ),
        ],
      ),
    );
  }
}
