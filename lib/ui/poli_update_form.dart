import 'package:flutter/material.dart';
import '../model/poli.dart';
import '/ui/poli_detail.dart';

class PoliUpdateForm extends StatefulWidget {
  final Poli polli

  const PoliUpdateForm({key? key, required this.poli})
  _PoliUpdateFormState createState() => _poliupdateformstate();
}

class _poliupdateformstate extends State<poliupddateform> {
  final _formkey = GlobalKey<Formstate>();
  final _namapolictrl = TextEditingController();

@override
void inistate() {
  super.inistate();
  setstate(() {
    _namapolictrl.text = widget.poli.namapoli;
  });
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text("ubah poli")),
    body: SingleChildScrollView(
      child: form(
        key: _formkey,
        child: column(
          children: [_fieldnamapoli(), sizeBox(height:20),_tombolsimpan()],
        ),
      ),
    ),
  )
}

_fieldnamapoli() {
  return Textfield(
    decoration: const InputDecoration(labelText: "Nama poli"),
    controller: _namapolictrl,
  );
}

_tombolsimpan() {
  return ElevatedButton(
    onPressed: () {
      poli poli = new poli(namapoli: _namapolictrl.text);
      Navigator.pop(context);
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)) => PoliDetail(poli: poli)));
},
    child: conts Text("simpan perubahan"));
}
}