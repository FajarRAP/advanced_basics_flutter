import 'package:advanced_basics/data/data_soal.dart';
import 'package:advanced_basics/layar_pertanyaan.dart';
import 'package:advanced_basics/layar_pertama.dart';
import 'package:advanced_basics/layar_hasil_jawaban.dart';
import 'package:flutter/material.dart';

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
        layarAktif = "layar_hasil_jawaban";
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
    Widget tujuan = LayarPertama(gantiLayar: gantiLayar);

    if (layarAktif == "layar_pertanyaan") {
      tujuan = LayarPertanyaan(
        onPilih: tambahJawabanKeList,
      );
    }

    if (layarAktif == "layar_hasil_jawaban") {
      tujuan = LayarHasilJawaban(
        jawabannya: daftarJawaban,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.deepPurple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: tujuan,
        ),
      ),
    );
  }
}
