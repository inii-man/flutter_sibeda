import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/berita/berita_screen.dart';
import 'package:shop_app/screens/dashboard/dashboard_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/infografis/infografis_screen.dart';
import 'package:shop_app/screens/profilsibeda/profil_screen.dart';

const Color inActiveIconColor = Color(0xFFB6B6B6);

class InitScreen extends StatefulWidget {
  const InitScreen({super.key});

  static String routeName = "/";

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  int currentSelectedIndex = 0;

  void updateCurrentIndex(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  final pages = [
    const HomeScreen(),
    const BeritaScreen(),
    const DashboardScreen(),
    const InfografisScreen(),
    const ProfilScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: updateCurrentIndex,
        currentIndex: currentSelectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: kPrimaryColor,
        type: BottomNavigationBarType.fixed,
        items: const [
            BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_outlined),
            label: '',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_outlined),
            label: '',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.donut_large_outlined),
            label: '',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}
