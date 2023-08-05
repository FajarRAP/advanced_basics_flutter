import 'package:flutter/material.dart';

class TombolJawaban extends StatelessWidget {
  const TombolJawaban({
    super.key,
    required this.tombolnya,
    required this.opsiJawaban,
  });

  final String opsiJawaban;
  final void Function() tombolnya;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: tombolnya,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 29, 0, 53),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 44,
        ),
        minimumSize: const Size(250, 40),
      ),
      child: Text(opsiJawaban),
    );
  }
}
