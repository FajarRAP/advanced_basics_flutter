import 'package:flutter/material.dart';

class LayarPertama extends StatelessWidget {
  const LayarPertama({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purple],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/quiz-logo.png",
              ),
              const SizedBox(height: 50),
              const Text(
                "Belajar Flutter dengan menyenangkan",
                style: TextStyle(color: Colors.white, fontSize: 28),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              OutlinedButton(
                onPressed: () {},
                child: const Text(
                  "Mulai Kuis",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
