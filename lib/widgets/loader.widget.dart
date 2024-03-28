import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(strokeWidth: 0.7),
      ),
    );
  }
}
