import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/screens/penamahi/penamahi_screen.dart';
import 'package:shop_app/screens/sirere/sirere_screen.dart';
import 'package:shop_app/screens/sitana/sitana_screen.dart';
import '../../../constants.dart';
import '../sieman/sieman_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              color: Color.fromARGB(254, 254, 98,42),
              height: 200,
              padding: const EdgeInsets.all(24),
              child: Image.asset(
                'assets/images/header-polos.png',
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
                    GestureDetector(
                      onTap: () {
                        // Handle tap for sieman
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SiemanScreen()),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/svg/sieman.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle tap for sitana
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SitanaScreen()),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/svg/sitana.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle tap for the sirere svg
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SirereScreen()),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/svg/sirere.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle tap for the penamahi
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PenamahiScreen()),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/svg/penamahi.svg',
                        fit: BoxFit.cover,
                      ),
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
