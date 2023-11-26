import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final String imagePath;

  const Body({required this.imagePath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
      height: double.infinity,
    );
  }
}
