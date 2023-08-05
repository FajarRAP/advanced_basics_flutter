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
              ? const LayarPertanyaan()
              : LayarPertama(gantiLayar),
        ),
      ),
    );
  }
}
