import 'package:advanced_basics/kalkulasi_jawaban.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics/data/data_soal.dart';

class LayarHasilJawaban extends StatelessWidget {
  const LayarHasilJawaban({super.key, required this.jawabannya});

  final List<String> jawabannya;

  List<Map<String, Object>> kalkulasiJawaban() {
    final List<Map<String, Object>> hasil = [];
    for (int a = 0; a < jawabannya.length; a++) {
      hasil.add(
        {
          "no_soal": a,
          "soalnya": pertanyaan[a].soal,
          "jawaban_benar": pertanyaan[a].opsiJawaban[0],
          "jawaban_orang": jawabannya[a],
        },
      );
    }
    return hasil;
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("X dari Y jawaban yang benar"),
          const SizedBox(
            height: 30,
          ),
          KalkulasiJawaban(jawabannya: kalkulasiJawaban()),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Coba Lagi"),
          ),
        ],
      ),
    );
  }
}
