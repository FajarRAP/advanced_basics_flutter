import 'package:flutter/material.dart';

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
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Quiz 1"),
          Text("Quiz 2"),
          Text("Quiz 3"),
        ],
      ),
    );
  }
}
