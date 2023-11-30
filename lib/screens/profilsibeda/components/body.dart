import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'dart:convert';
import 'profile_menu.dart';
import 'profile_pic.dart';
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          margin: const EdgeInsets.only(
            top: 24,
            bottom: 24,
          ),
          child: const Column(children: [
            ProfilePic(),
          ]),
        ),
        Container(
          height: 350,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 24, right: 10),
                child: const Row(
                  children: [
                    Text(
                      'Informasi BPBD',
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ProfileMenu(
                text: "Profile BPBD",
                icon: "assets/icons/User Icon.svg",
                press: () => {
                  Navigator.pushNamed(context, '/profilbpbd'),
                },
              ),
              ProfileMenu(
                text: "Kontak BPBD",
                icon: "assets/icons/Conversation.svg",
                press: () {},
              ),
              ProfileMenu(
                text: "Dokumen",
                icon: "assets/icons/Mail.svg",
                press: () {
                  Navigator.pushNamed(context, '/dokumen');
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 250,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 24, right: 10),
                child: const Row(
                  children: [
                    Text(
                      'Pengaturan Akun',
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ProfileMenu(
                text: "Ubah Nama Profil",
                icon: "assets/icons/Parcel.svg",
                press: () => {},
              ),
              ProfileMenu(
                text: "Ubah Password",
                icon: "assets/icons/Lock.svg",
                press: () {},
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 200,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Column(
            children: [
              SizedBox(height: 8),
              ProfileMenu(
                text: "Tentang Aplikasi",
                icon: "assets/icons/Question mark.svg",
                press: () => {},
              ),
              ProfileMenu(
                text: "Logout",
                icon: "assets/icons/Log out.svg",
                press: () => logoutAndNavigateToSignIn(context),
              )
            ],
          ),
        ),
      ]),
    ); 
  }
  Future<void> logoutAndNavigateToSignIn(BuildContext context) async {
    
    // Retrieve the token from shared preferences
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString('token');

    if (token != null) {
      // Use the token for another endpoint
      const String logoutApi = 'http://sibeda-development.cpat.my.id/api/auth/logout'; // Replace with another API endpoint
      final response = await http.post(
        Uri.parse(logoutApi),
        headers: {'Authorization': 'Bearer $token'},
      );

      if (response.statusCode == 200) {
        Navigator.pushReplacementNamed(context, SignInScreen.routeName);
      } else {
        print('Request failed: ${response.statusCode}');
      }
    } else {
      print('Token is not available. User needs to log in.');
    }
  }
}
