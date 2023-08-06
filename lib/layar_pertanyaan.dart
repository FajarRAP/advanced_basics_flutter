import 'package:advanced_basics/tombol_jawaban.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics/data/data_soal.dart';
import 'package:google_fonts/google_fonts.dart';

class LayarPertanyaan extends StatefulWidget {
  const LayarPertanyaan({super.key, required this.onPilih});
  final void Function(String pilih) onPilih;
  @override
  State<LayarPertanyaan> createState() {
    return _LayarPertanyaanState();
  }
}

class _LayarPertanyaanState extends State<LayarPertanyaan> {
  int nomorPertanyaan = 0;

  void tombol(String pilih) {
    widget.onPilih(pilih);
    setState(() {
      nomorPertanyaan++;
    });
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            pertanyaan[nomorPertanyaan].soal,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 24),
          ...pertanyaan[nomorPertanyaan].getOpsiJawabanAcak().map((opsi) {
            return TombolJawaban(
              tombolnya: () {
                tombol(opsi);
              },
              opsiJawaban: opsi,
            );
          }),
        ],
      ),
    );
  }
}
