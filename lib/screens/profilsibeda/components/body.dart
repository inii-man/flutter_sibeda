import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

/*class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}*/

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(
            top: 24,
            bottom: 24,
          ),
          child: Column(children: [
            const ProfilePic(),
          ]),
        ),
        Container(
          height: 350,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 24, right: 10),
                child: Row(
                  children: [
                    Text(
                      'Informasi BPBD',
                      style: const TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
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
        SizedBox(height: 8),
        Container(
          height: 250,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 24, right: 10),
                child: Row(
                  children: [
                    Text(
                      'Pengaturan Akun',
                      style: const TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ProfileMenu(
                text: "Ubah Nama Profil",
                icon: "assets/icons/Parcel.svg",
                press: () => {
                  Navigator.pushNamed(context, '/ubahnama'),
                },
              ),
              ProfileMenu(
                text: "Ubah Password",
                icon: "assets/icons/Lock.svg",
                press: () {
                  Navigator.pushNamed(context, '/ubahpass');
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 200,
          width: double.maxFinite,
          decoration: BoxDecoration(
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
                press: () {},
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
