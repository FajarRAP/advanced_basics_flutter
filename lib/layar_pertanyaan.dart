import 'package:advanced_basics/tombol_jawaban.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics/data/data_soal.dart';

class LayarPertanyaan extends StatefulWidget {
  const LayarPertanyaan({super.key});
  @override
  State<LayarPertanyaan> createState() {
    return _LayarPertanyaanState();
  }
}

class _LayarPertanyaanState extends State<LayarPertanyaan> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            pertanyaan[0].soal,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 24),
          TombolJawaban(
            tombolnya: () {},
            opsiJawaban: pertanyaan[0].opsiJawaban[0],
          ),
          TombolJawaban(
            tombolnya: () {},
            opsiJawaban: pertanyaan[0].opsiJawaban[1],
          ),
          TombolJawaban(
            tombolnya: () {},
            opsiJawaban: pertanyaan[0].opsiJawaban[2],
          ),
          TombolJawaban(
            tombolnya: () {},
            opsiJawaban: pertanyaan[0].opsiJawaban[3],
          ),
        ],
      ),
    );
  }
}
