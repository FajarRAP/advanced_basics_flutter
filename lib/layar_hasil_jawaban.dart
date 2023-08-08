import 'package:advanced_basics/kalkulasi_jawaban.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics/data/data_soal.dart';
import 'package:google_fonts/google_fonts.dart';

class LayarHasilJawaban extends StatelessWidget {
  const LayarHasilJawaban(
      {super.key, required this.jawabannya, required this.gantiLayar});

  final List<String> jawabannya;
  final void Function() gantiLayar;

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
    final dataJawaban = kalkulasiJawaban();
    final jumlahSoal = pertanyaan.length;
    final jawabanBenar = dataJawaban
        .where((data) => data["jawaban_orang"] == data["jawaban_benar"])
        .length;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Kamu menjawab $jawabanBenar dari $jumlahSoal jawaban yang benar!",
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 198, 197, 197),
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          KalkulasiJawaban(jawabannya: dataJawaban),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            onPressed: gantiLayar,
            icon: const Icon(
              Icons.restart_alt_rounded,
              color: Colors.white,
            ),
            label: Text(
              "Coba Lagi",
              style: GoogleFonts.lato(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
