import 'package:flutter/material.dart';

class BeritaScreen extends StatelessWidget {
  static String routeName = "/berita";

  const BeritaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(255, 242, 242, 242),
     appBar: AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(5.0),
        child: Container(
          height: 1.0,
          color: Colors.grey.withOpacity(0.5),
        )
      ),
      title: Row(
        children: [
          Image.asset(
              'assets/images/berita.png', height: 20.0,
            ),
        ],
      ),
    ),
  body: ListView(
    children: [
    Container(
    margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
    width: double.maxFinite,
    height: 136,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(top: 18, left: 10, bottom: 18),
            child: Image.asset('assets/images/image7.png'),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 24, bottom: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'BPBD Kota Cimahi Mulai Salurkan Air Bersih BPBD Kota Cimahi Mulai Salurkan Air Bersih BPBD Kota Cimahi Mulai Salurkan Air Bersih BPBD Kota Cimahi Mulai Salurkan Air BersihBPBD Kota Cimahi Mulai Salurkan Air Bersih BPBD Kota Cimahi Mulai Salurkan Air Bersih',
                style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
              Text(
                '21 September 2023',
                style: const TextStyle(fontSize: 10.0, color: Colors.grey),
                ),
            ],
          ),
        ),
        ),
      ],
    ),
  ),
  Container(
    margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
    width: double.maxFinite,
    height: 136,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(top: 18, left: 10, bottom: 18),
            child: Image.asset('assets/images/image7.png'),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 24, bottom: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'BPBD Kota Cimahi Mulai Salurkan Air Bersih BPBD Kota Cimahi Mulai Salurkan Air Bersih BPBD Kota Cimahi Mulai Salurkan Air Bersih BPBD Kota Cimahi Mulai Salurkan Air BersihBPBD Kota Cimahi Mulai Salurkan Air Bersih BPBD Kota Cimahi Mulai Salurkan Air Bersih',
                style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                //berikan code font style dengan font semibold

              ),
              const SizedBox(height: 10),
              Text(
                '21 September 2023',
                style: const TextStyle(fontSize: 10.0, color: Colors.grey),
                ),
            ],
          ),
        ),
        ),
      ],
    ),
  ),
    ],
    
  ),
  );
    
  }
} 

