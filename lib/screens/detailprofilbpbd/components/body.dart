import 'package:flutter/material.dart';

import 'profilpicbpbd.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
          margin: EdgeInsets.only(top: 10, right:10 , left: 10,),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const ProfilePic(),
            ]
          ),
          ),
          // Expanded(
            //flex: 1,
           Container(
            height: 500,
            margin: EdgeInsets.only(right:10 , left: 10,),
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
                  child: Column(
                    children: [
                      Text(
                      'Sejarah Lembaga Badan Nasional Penanggulangan Bencana (BNPB) terbentuk tidak terlepas dari perkembangan penanggulangan bencana pada masa kemerdekaan hingga bencana alam berupa gempa bumi dahsyat di Samudera Hindia pada abad 20. Sementara itu, perkembangan tersebut sangat dipengaruhi pada konteks situasi, cakupan dan paradigma penanggulangan bencana.',
                      style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Melihat kenyataan saat ini, berbagai bencana yang dilatarbelakangi kondisi geografis, geologis, hidrologis, dan demografis mendorong Indonesia untuk membangun visi untuk membangun ketangguhan bangsa dalam menghadapi bencana.',
                      style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(height: 10),
                     Text(
                      'Wilayah Indonesia merupakan gugusan kepulauan terbesar di dunia memiliki 129 gunung api aktif, atau dikenal dengan ring of fire, serta terletak berada pada pertemuan tiga lempeng tektonik aktif dunia?Lempeng Indo-Australia, Eurasia, dan Pasifik.',
                      style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                    ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //),
          const SizedBox(height: 8),
             Container(
            height: 500,
            margin: EdgeInsets.only(right:10 , left: 10,),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(top: 24, left: 24, right: 10),
                  child: Column(
                    children: [
                      
                      Text(
                      'Struktur Organisasi BPBD Kota Cimahi',
                      style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Melihat kenyataan saat ini, berbagai bencana yang dilatarbelakangi kondisi geografis, geologis, hidrologis, dan demografis mendorong Indonesia untuk membangun visi untuk membangun ketangguhan bangsa dalam menghadapi bencana.',
                      style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(height: 10),
                     Text(
                      'Wilayah Indonesia merupakan gugusan kepulauan terbesar di dunia memiliki 129 gunung api aktif, atau dikenal dengan ring of fire, serta terletak berada pada pertemuan tiga lempeng tektonik aktif dunia?Lempeng Indo-Australia, Eurasia, dan Pasifik.',
                      style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                    ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]
        ),
    );
  }
}
