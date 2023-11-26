import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              color: kPrimaryColor,
              height: 200,
              padding: const EdgeInsets.all(24),
              child: Image.asset(
                'assets/images/header.png',
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            ),
            Transform.translate(
              offset: const Offset(0.0, -12.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/sieman.svg',
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/svg/sitana.svg',
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/svg/sirere.svg',
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/svg/penamahi.svg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
