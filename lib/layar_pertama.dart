import 'package:flutter/material.dart';

class LayarPertama extends StatelessWidget {
  const LayarPertama(this.gantiLayar, {super.key});

  final void Function() gantiLayar;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(180, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          const Text(
            "Belajar Flutter dengan menyenangkan",
            style: TextStyle(color: Colors.white, fontSize: 28),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: gantiLayar,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.check),
            label: const Text(
              "Mulai Kuis",
            ),
          ),
        ],
      ),
    );
  }
}
