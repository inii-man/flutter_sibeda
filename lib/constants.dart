import 'package:flutter/material.dart';

import 'size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Colors.black;

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";

// sieman input form
const String kSiemanLaporanNullError = "Mohon Masukan No Laporan";
const String kSiemanPetugasNullError = "Mohon Masukan Nama Petugas";
const String kSiemanUnsurTerkaitNullError = "Mohon Masukan Unsur Terkait";
const String kSiemanNamaPelaporNullError = "Mohon Masukan Nama Pelapor";
const String kSiemanNoKontakNullError = "Mohon Masukan No Kontak";
const String kSiemanUnsurPelaporNullError = "Mohon Masukan Unsur Pelapor";
const String kSiemanTglNullError = "Mohon Masukan Tanggal";
const String kSiemanWaktuNullError = "Mohon Masukan Waktu";
const String kSiemanPotensiBencanaNullError = "Mohon Masukan Potensi Bencana";
const String kSiemanLokasiAssesmentNullError = "Mohon Masukan Lokasi Assesment";
const String kSiemanRtNullError = "Mohon Masukan RT";
const String kSiemanRwNullError = "Mohon Masukan RW";
const String kSiemanKelurahanNullError = "Mohon Masukan Kelurahan";
const String kSiemanKecamatanNullError = "Mohon Masukan Kecamatan";
const String kSiemanLongitudeNullError = "Mohon Masukan Longitude";
const String kSiemanLatitudeNullError = "Mohon Masukan Latitude";
const String kSiemanAksesLokasiNullError = "Mohon Masukan Akses Lokasi";
const String kSiemanSektorNullError = "Mohon Masukan Sektor";
const String kSiemanTipeAssetNullError = "Mohon Masukan Tipe Asset";
const String kSiemanKepemilikanAssetNullError =
    "Mohon Masukan Kepemilikan Asset";
const String kSiemanFungsiAssetNullError = "Mohon Masukan Fungsi Asset";
const String kSiemanPenyebabNullError = "Mohon Masukan Penyebab";
const String kSiemanPotensiDampakNullError = "Mohon Masukan Potensi Dampak";
const String kSiemanPotensiKorbanNullError = "Mohon Masukan Potensi Korban";
const String kSiemanPotensiKerusakanNullError =
    "Mohon Masukan Potensi Kerusakan";
const String kSiemanEstimasiKerugianNullError =
    "Mohon Masukan Estimasi Kerugian";
const String kSiemanUpayaPerluNullError = "Mohon Masukan Upaya Perlu";
const String kSiemanUpayaSudahNullError = "Mohon Masukan Upaya Sudah";
const String kSiemanLogistikNullError = "Mohon Masukan Logistik";

const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

//ubah nama profil
const String kProfilNullError = "Mohon Masukan Nama Anda";

//ubah pass
const String kPassNewNullError = "Mohon Masukan Password Baru Anda";
const String kPassKonfirmNullError = "Mohon Konfirmasi Password Baru Anda";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}
