// import 'dart:ffi';

import 'package:flutter/material.dart';
import '../../../components/custom_surfix_icon.dart';
import '../../../components/form_error.dart';
import '../../../helper/keyboard.dart';
import '../../login_success/login_success_screen.dart';

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
  String? email;
  String? password;
  bool? remember = false;
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
        child: Column(
          children: [
            /// CARD LAPORAN
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                buildLaporanField(),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Tim Assesment',
                  style: TextStyle(
                      fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                buildLaporanField(),
                const SizedBox(height: 16),
                buildLaporanField(),
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
                  style: TextStyle(
                      fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                buildLaporanField(),
                const SizedBox(height: 20),
                buildLaporanField(),
                const SizedBox(height: 20),
                buildLaporanField(),
                const SizedBox(height: 20),
                buildLaporanField(),
                const SizedBox(height: 20),
                buildLaporanField(),
                const SizedBox(height: 20),
                buildLaporanField(),
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
                buildLaporanField(),
                const SizedBox(height: 16),
                buildLaporanField(),
                const SizedBox(height: 16),
                buildLaporanField(),
                const SizedBox(height: 16),
                buildLaporanField(),
                const SizedBox(height: 16),
                buildLaporanField(),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Lokasi Assesment',
                  style: TextStyle(
                      fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                buildLaporanField(),
                const SizedBox(height: 16),
                buildLaporanField(),
                const SizedBox(height: 16),
                testField()
              ],
            ),
            const SizedBox(height: 30),
            FormError(errors: errors),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // if all are valid then go to success screen
                    KeyboardUtil.hideKeyboard(context);
                    Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                  }
                },
                child: const Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
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
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Location point.svg"),
      ),
    );
  }

  TextFormField buildLaporanField() {
    return TextFormField(
      onSaved: (newValue) => laporan = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kLaporanNullError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kLaporanNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Laporan",
        hintText: "isi no laporan",
      ),
    );
  }
}
