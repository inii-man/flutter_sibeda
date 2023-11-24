import 'package:flutter/material.dart';

import 'components/body.dart';

class SiemanScreen extends StatelessWidget {
  static String routeName = "/sieman";

  const SiemanScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sieman"),
      ),
      body: const Body(),
    );
  }
}
