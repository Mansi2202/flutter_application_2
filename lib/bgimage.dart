import 'package:flutter/material.dart';

class BGimage extends StatelessWidget {
  const BGimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/bg.jpg",
      fit: BoxFit.cover,
    );
  }
}
