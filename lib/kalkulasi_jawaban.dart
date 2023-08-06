import 'package:flutter/material.dart';

class KalkulasiJawaban extends StatelessWidget {
  const KalkulasiJawaban({super.key, required this.jawabannya});
  final List<Map<String, Object>> jawabannya;

  @override
  Widget build(context) {
    return Column(
      children: jawabannya.map((data) {
        return Row(
          children: [
            Text(((data["no_soal"] as int) + 1).toString()),
            Column(
              children: [
                Text(data["soalnya"] as String),
                Text(data["jawaban_orang"] as String),
                Text(data["jawaban_benar"] as String),
              ],
            ),
          ],
        );
      }).toList(),
    );
  }
}
