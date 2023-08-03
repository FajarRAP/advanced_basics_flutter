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
  Widget? layarAktif;

  @override
  void initState() {
    layarAktif = LayarPertama(gantiLayar);
    super.initState();
  }

  void gantiLayar() {
    setState(() {
      layarAktif = const LayarPertanyaan();
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
          child: layarAktif,
        ),
      ),
    );
  }
}
