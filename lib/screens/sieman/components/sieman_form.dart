// import 'dart:ffi';

import 'package:flutter/material.dart';
import '../../../components/custom_surfix_icon.dart';
import '../../../components/form_error.dart';
import '../../../helper/keyboard.dart';
import '../../login_success/login_success_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

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
      child: Column(
        children: [
          /// CARD LAPORAN
          Container(
            height: 115,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: buildLaporanField(),
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),

          /// CARD TIM ASSESMENT
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
                  margin: const EdgeInsets.only(left: 24, right: 10),
                  child: const Row(
                    children: [
                      Text(
                        'Tim Assesment',
                        style: const TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: buildLaporanField(),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildLaporanField(),
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),

          /// CARD INFORMASI UMUM
          Container(
            height: 700,
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
                        'Informasi Umum',
                        style: const TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: buildLaporanField(),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildLaporanField(),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildLaporanField(),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildLaporanField(),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildLaporanField(),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildLaporanField(),
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            height: 570,
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
                        'Lokasi Assesment',
                        style: const TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: buildLaporanField(),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildLaporanField(),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildLaporanField(),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildLaporanField(),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: buildLaporanField(),
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            height: 520,
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
                        'Lokasi Assesment',
                        style: const TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, right: 10),
                        child: buildLaporanField(),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10, right: 20),
                        child: buildLaporanField(),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: testField(),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Set Lokasi"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          // FormError(errors: errors),
          // SizedBox(height: getProportionateScreenHeight(20)),
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
        ],
      ),
    );
  }

  DropdownButtonFormField testField() {
    List<String> list = <String>['One', 'Two', 'Three', 'Four'];
    String dropdownValue = list.first;
    return DropdownButtonFormField(
      value: dropdownValue,
      onChanged: (newValue) {
        print(newValue);
        // Add any other logic you want to perform on value change
      },
      validator: (value) => value == null ? 'Field is required' : null,
      items: list.map((item) {
        return DropdownMenuItem(
          child: Text(item),
          value: item,
        );
      }).toList(),
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
          removeError(error: kLaporanNullError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kLaporanNullError);
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
}
