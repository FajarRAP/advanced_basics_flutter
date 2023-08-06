import 'package:advanced_basics/data/data_soal.dart';
import 'package:advanced_basics/layar_pertanyaan.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics/layar_pertama.dart';

class Kuis extends StatefulWidget {
  const Kuis({super.key});
  @override
  State<Kuis> createState() {
    return _KuisState();
  }
}

class _KuisState extends State<Kuis> {
  String layarAktif = "layar_awal";
  final List<String> daftarJawaban = [];

  void tambahJawabanKeList(String jawaban) {
    daftarJawaban.add(jawaban);

    if (daftarJawaban.length == pertanyaan.length) {
      setState(() {
        daftarJawaban.clear();
        layarAktif = "layar_awal";
      });
    }
  }

  void gantiLayar() {
    setState(() {
      layarAktif = "layar_pertanyaan";
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.deepPurple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: layarAktif != "layar_awal"
              ? LayarPertanyaan(onPilih: tambahJawabanKeList)
              : LayarPertama(gantiLayar: gantiLayar),
        ),
      ),
    );
  }
}
