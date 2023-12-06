// import 'dart:ffi';

import 'package:flutter/material.dart';
import '../../../components/custom_surfix_icon.dart';
import '../../../components/form_error.dart';
import '../../../helper/keyboard.dart';

import '../../../constants.dart';

class SiemanForm extends StatefulWidget {
  const SiemanForm({super.key});

  @override
  // _SiemanFormState createState() => _SiemanFormState();
  State<SiemanForm> createState() => _SiemanFormState();
}

class _SiemanFormState extends State<SiemanForm> {
  final _formKey = GlobalKey<FormState>();
  String? laporan;
  String? petugas;
  String? unsurTerkait;
  String? namaPelapor;
  String? noKontak;
  String? unsurPelapor;
  String? tanggal;
  String? waktu;
  String? potensiBencana;
  String? lokasiAssesment;
  String? rt;
  String? rw;
  String? kelurahan;
  String? kecamatan;
  String? longitude;
  String? latitude;
  String? aksesLokasi;
  String? sektor;
  String? tipeAsset;
  String? kepemilikanAsset;
  String? fungsiAsset;
  String? penyebab;
  String? potensiDampak;
  String? potensiKorban;
  String? potensiKerusakan;
  String? estimasiKerugian;
  String? upayaPerlu;
  String? upayaSudah;
  String? logistik;

  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            /// CARD LAPORAN
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 10),
                  child: const Row(
                    children: [],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child:
                      buildField(laporan, 'Laporan', kSiemanLaporanNullError),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Tim Assesment',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child:
                      buildField(petugas, 'Petugas', kSiemanPetugasNullError),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildField(unsurTerkait, 'Unsur Terkait',
                      kSiemanUnsurTerkaitNullError),
                ),
              ],
            ),
            const SizedBox(height: 10),

            /// CARD INFORMASI UMUM
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Informasi Umum',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: buildField(
                      namaPelapor, 'Nama Pelapor', kSiemanNamaPelaporNullError),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildField(
                      noKontak, 'No Kontak', kSiemanNoKontakNullError),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildField(unsurPelapor, 'Unsur Pelapor',
                      kSiemanUnsurPelaporNullError),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildField(tanggal, 'Tanggal', kSiemanTglNullError),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildField(waktu, 'Waktu', kSiemanWaktuNullError),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildField(potensiBencana, 'Potensi Bencana',
                      kSiemanPotensiBencanaNullError),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Text(
                      'Lokasi Assesment',
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: buildField(lokasiAssesment, 'Lokasi Assesment',
                      kSiemanLokasiAssesmentNullError),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildField(rt, 'RT', kSiemanRtNullError),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildField(rw, 'RW', kSiemanRwNullError),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildField(
                      kelurahan, 'Kelurahan', kSiemanKelurahanNullError),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildField(
                      kecamatan, 'Kecamatan', kSiemanKecamatanNullError),
                ),
              ],
            ),

            // SizedBox(height: getProportionateScreenHeight(10)),

            // /// TITIK KOORDINAT
            // Container(
            //   height: 320,
            //   width: double.maxFinite,
            //   decoration: const BoxDecoration(
            //     color: Color.fromARGB(255, 255, 255, 255),
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: EdgeInsets.only(left: 24, right: 10),
            //         child: const Row(
            //           children: [
            //             Text(
            //               'Titik Koordinat',
            //               style: const TextStyle(
            //                   fontSize: 14.0, fontWeight: FontWeight.bold),
            //             ),
            //           ],
            //         ),
            //       ),
            //       const SizedBox(height: 20),
            //       buildLaporanField(),
            //       const SizedBox(height: 16),
            //       buildLaporanField(),
            //       const SizedBox(height: 16),
            //       testField()
            //     ],
            //   ),
            // ),
            // // SizedBox(height: getProportionateScreenHeight(10)),

            // /// OBJEK ASSESMENT
            // Container(
            //   height: 450,
            //   width: double.maxFinite,
            //   decoration: const BoxDecoration(
            //     color: Color.fromARGB(255, 255, 255, 255),
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: EdgeInsets.only(left: 24, right: 10),
            //         child: const Row(
            //           children: [
            //             Text(
            //               'Object Assesment',
            //               style: const TextStyle(
            //                   fontSize: 14.0, fontWeight: FontWeight.bold),
            //             ),
            //           ],
            //         ),
            //       ),
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: const EdgeInsets.only(left: 20, right: 20),
            //         child: buildLaporanField(),
            //       ),
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: const EdgeInsets.only(left: 20, right: 20),
            //         child: buildLaporanField(),
            //       ),
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: const EdgeInsets.only(left: 20, right: 20),
            //         child: buildLaporanField(),
            //       ),
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: const EdgeInsets.only(left: 20, right: 20),
            //         child: buildLaporanField(),
            //       ),
            //     ],
            //   ),
            // ),
            // // SizedBox(height: getProportionateScreenHeight(10)),

            // /// PENYEBAB & POTENSI DAMPAK KEJADIAN
            // Container(
            //   height: 600,
            //   width: double.maxFinite,
            //   decoration: const BoxDecoration(
            //     color: Color.fromARGB(255, 255, 255, 255),
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: EdgeInsets.only(left: 24, right: 10),
            //         child: const Row(
            //           children: [
            //             Text(
            //               'Penyebab & Potensi Dampak Kejadian',
            //               style: const TextStyle(
            //                   fontSize: 14.0, fontWeight: FontWeight.bold),
            //             ),
            //           ],
            //         ),
            //       ),
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: const EdgeInsets.only(left: 20, right: 20),
            //         child: buildLaporanField(),
            //       ),
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: const EdgeInsets.only(left: 20, right: 20),
            //         child: buildLaporanField(),
            //       ),
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: const EdgeInsets.only(left: 20, right: 20),
            //         child: buildLaporanField(),
            //       ),
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: const EdgeInsets.only(left: 20, right: 20),
            //         child: buildLaporanField(),
            //       ),
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: const EdgeInsets.only(left: 20, right: 20),
            //         child: buildLaporanField(),
            //       ),
            //     ],
            //   ),
            // ),
            // // SizedBox(height: getProportionateScreenHeight(10)),

            // /// UPAYA DAN TINDAKAN
            // Container(
            //   height: 250,
            //   width: double.maxFinite,
            //   decoration: const BoxDecoration(
            //     color: Color.fromARGB(255, 255, 255, 255),
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: EdgeInsets.only(left: 24, right: 10),
            //         child: const Row(
            //           children: [
            //             Text(
            //               'UPDAYA DAN TINDAKAN',
            //               style: const TextStyle(
            //                   fontSize: 14.0, fontWeight: FontWeight.bold),
            //             ),
            //           ],
            //         ),
            //       ),
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: const EdgeInsets.only(left: 20, right: 20),
            //         child: buildLaporanField(),
            //       ),
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: const EdgeInsets.only(left: 20, right: 20),
            //         child: buildLaporanField(),
            //       ),
            //     ],
            //   ),
            // ),
            // // SizedBox(height: getProportionateScreenHeight(10)),

            // /// KEBUTUHAN LOGISTIK
            // Container(
            //   height: 250,
            //   width: double.maxFinite,
            //   decoration: const BoxDecoration(
            //     color: Color.fromARGB(255, 255, 255, 255),
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: EdgeInsets.only(left: 24, right: 10),
            //         child: const Row(
            //           children: [
            //             Text(
            //               'KEBUTUHAN LOGISTIK',
            //               style: const TextStyle(
            //                   fontSize: 14.0, fontWeight: FontWeight.bold),
            //             ),
            //           ],
            //         ),
            //       ),
            //       const SizedBox(height: 20),
            //       Container(
            //         margin: const EdgeInsets.only(left: 20, right: 20),
            //         child: buildLaporanField(),
            //       ),
            //     ],
            //   ),
            // ),
            // // SizedBox(height: getProportionateScreenHeight(30)),
            // FormError(errors: errors),
            // SizedBox(height: getProportionateScreenHeight(20)),
            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // if all are valid then go to success screen
                  KeyboardUtil.hideKeyboard(context);
                  // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              },
              child: const Text("Submit"),
            ),
            const SizedBox(height: 50),
          ]),
        ));
  }

//   class DropdownMenuExample extends StatefulWidget {
//   const DropdownMenuExample({super.key});

//   @override
//   State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
// }

  // DropdownMenuExample() {
  //   List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  //   String dropdownValue = list.first;
  //   return DropdownButton<String>(
  //     value: dropdownValue,
  //     icon: const Icon(Icons.arrow_downward),
  //     elevation: 16,
  //     style: const TextStyle(color: Colors.deepPurple),
  //     underline: Container(
  //       height: 2,
  //       color: Colors.deepPurpleAccent,
  //     ),
  //     onChanged: (String? value) {
  //       // This is called when the user selects an item.
  //       setState(() {
  //         dropdownValue = value!;
  //       });
  //     },
  //     items: list.map<DropdownMenuItem<String>>((String value) {
  //       return DropdownMenuItem<String>(
  //         value: value,
  //         child: Text(value),
  //       );
  //     }).toList(),
  //   );
  // }

  DropdownButtonFormField testField() {
    return DropdownButtonFormField(
      items: const [
        DropdownMenuItem(
          value: "One",
          child: Text("One"),
        ),
      ],
      onChanged: (value) {
        print(value);
      },
      decoration: const InputDecoration(
        labelText: "Lokasi",
        hintText: "Lokasi",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSurffixIcon(svgIcon: "assets/icons/Location point.svg"),
      ),
    );
  }

  TextFormField buildLaporanField() {
    return TextFormField(
      onSaved: (newValue) => laporan = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kSiemanLaporanNullError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kSiemanLaporanNullError);
          return "Laporan tidak boleh kosong";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Laporan",
        hintText: "isi no laporan",
      ),
    );
  }

  TextFormField buildField(variable, label, errorValidation) {
    return TextFormField(
      onSaved: (newValue) => variable = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: errorValidation);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: errorValidation);
          return errorValidation;
        }
        return null;
      },
      decoration: InputDecoration(labelText: label, hintText: label),
    );
  }
}
