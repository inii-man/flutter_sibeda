// import 'dart:ffi';

import 'package:flutter/material.dart';
import '../../../components/custom_surfix_icon.dart';
import '../../../components/form_error.dart';
import '../../../helper/keyboard.dart';
import '../../forgot_password/forgot_password_screen.dart';
import '../../login_success/login_success_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class UbahpassForm extends StatefulWidget {
  const UbahpassForm({super.key});

  @override
  // _UbahpassFormState createState() => _UbahpassFormState();
  State<UbahpassForm> createState() => _UbahpassFormState();
}

class _UbahpassFormState extends State<UbahpassForm> {
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
                    children: [],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: buildLaporanField(),
                ),
                SizedBox(height: getProportionateScreenHeight(24)),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: buildPasswordFormField(),
                ),
              ],
            ),
          ),
          
          SizedBox(height: getProportionateScreenHeight(10)),
        
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child:  FormError(errors: errors),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
          
         child: ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
            child: const Text("Simpan"),
          ),
      ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNewNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNewNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Konfirmasi Password",
        hintText: "Masukan Konfirmasi Password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildLaporanField() {
    return TextFormField(
      onSaved: (newValue) => laporan = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassKonfirmNullError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassKonfirmNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Password Baru",
        hintText: "Isi Password baru",
      ),
    );
  }
}
