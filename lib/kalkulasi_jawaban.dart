import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KalkulasiJawaban extends StatelessWidget {
  const KalkulasiJawaban({super.key, required this.jawabannya});
  final List<Map<String, Object>> jawabannya;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: SizedBox(
        height: 300,
        child: SingleChildScrollView(
          child: Column(
            children: jawabannya.map((data) {
              bool isBenar = data["jawaban_benar"] == data["jawaban_orang"];
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: (isBenar) ? Colors.greenAccent : Colors.red,
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        ((data["no_soal"] as int) + 1).toString(),
                        style: GoogleFonts.lato(
                          color: Colors.deepPurple,
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (data["soalnya"] as String),
                          style: GoogleFonts.lato(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          (data["jawaban_orang"] as String),
                          style: GoogleFonts.lato(
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          (data["jawaban_benar"] as String),
                          style: GoogleFonts.lato(
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
