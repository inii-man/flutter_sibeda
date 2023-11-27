import 'package:flutter/material.dart';

import 'components/body.dart';

class SitanaScreen extends StatelessWidget {
  static String routeName = "/sitana";

  const SitanaScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(5.0),
            child: Container(
              height: 1.0,
              color: Colors.grey.withOpacity(0.5),
            )),
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo_sitana.png',
              height: 20.0,
            ),
          ],
        ),
      ),
      body: const Body(),
    );
  }
}
