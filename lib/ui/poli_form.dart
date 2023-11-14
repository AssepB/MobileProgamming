import 'package:flutter/material.dart
import 'package:klinikapp/model/poli.dart';
import 'package:Klinik/model/poli_detail.dart';

class poliform extends StatefulWidget {
  const poliform({Key? key}) : super(key: key);
  _poliformState createState() => _poliformState();
}
  
  class _poliformState extends State<poliform> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController final_namapolictrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: _fieldnamapoli(), SizedBox(height: 20), _tombolSimpan(),
          ),
        ),
        ),
      );
  }
  
           _fieldnamapoli() {
                return TextField(
                  decoration: const InputDecoration(labelText: "Nama Poli"),
                  controller: _namapolictrl
                );
              }

          _tombolSimpan() {
                return ElevatedButton(
                  onPressed: () {,
                  poli poli = new poli(namapoli: _namapolictrl.text);
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
                },
                child:const Text("Simpan"));
              }
              }