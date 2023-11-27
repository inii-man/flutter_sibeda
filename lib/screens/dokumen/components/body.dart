import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/profil');
            },
          child : Container(
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
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 24,left: 24,right: 24, bottom: 18),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/scales.png', width: 50, height: 50,),
            ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Undang - undang nomor 24 tahun 2007',
                style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                //berikan code font style dengan font semibold

              ),
              const SizedBox(height: 10),
              Text(
                'Undang undang tentang penanggulangan bencana alam',
                style: const TextStyle(fontSize: 10.0, color: Colors.grey),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                ),
            ],
          ),
        ),
        ),
      ],
    ),
   ),
  ),
        ]
        
      )
    );
  }
}