import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/products/products_screen.dart';
import 'package:shop_app/screens/ubahprofil/ubahprofil_screen.dart';

import 'screens/cart/cart_screen.dart';
import 'screens/complete_profile/complete_profile_screen.dart';
import 'screens/details/details_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/init_screen.dart';
import 'screens/login_success/login_success_screen.dart';
import 'screens/otp/otp_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/berita/berita_screen.dart';
import 'screens/sieman/sieman_screen.dart';
import 'screens/sitana/sitana_screen.dart';
import 'screens/sirere/sirere_screen.dart';
import 'screens/penamahi/penamahi_screen.dart';
import 'screens/profilsibeda/profil_screen.dart';
import 'screens/infografis/infografis_screen.dart';
import 'screens/dokumen/dokumen_screen.dart';
import 'screens/detailprofilbpbd/detailprofil_screen.dart';
import 'screens/ubahprofil/ubahprofil_screen.dart';
import 'screens/ubahpassword/ubahpassword_screen.dart';
import 'screens/dashboard/dashboard_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  InitScreen.routeName: (context) => const InitScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),

// input menu
  SiemanScreen.routeName: (context) => const SiemanScreen(),
  SitanaScreen.routeName: (context) => const SitanaScreen(),
  SirereScreen.routeName: (context) => const SirereScreen(),
  PenamahiScreen.routeName: (context) => const PenamahiScreen(),

  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  ProductsScreen.routeName: (context) => const ProductsScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  BeritaScreen.routeName: (context) => const BeritaScreen(),
  ProfilScreen.routeName: (context) => const ProfilScreen(),  
  InfografisScreen.routeName: (context) => const InfografisScreen(),
  DokumenScreen.routeName: (context) => const DokumenScreen(),
  DetailprofilScreen.routeName: (context) => const DetailprofilScreen(),
  UbahnamaScreen.routeName: (context) => const UbahnamaScreen(),
  UbahpassScreen.routeName: (context) => const UbahpassScreen(),
  DashboardScreen.routeName: (context) => const DashboardScreen(),
};
