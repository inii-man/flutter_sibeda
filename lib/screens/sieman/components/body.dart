import 'package:flutter/material.dart';
import '../../../components/no_account_text.dart';
import '../../../components/socal_card.dart';

import '../../../size_config.dart';
import 'sieman_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Tim Assesment",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // const Text(
                //   "Sign in with your email and password  \nor continue with social media",
                //   textAlign: TextAlign.start,
                // ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                const SiemanForm(),
                // SizedBox(height: SizeConfig.screenHeight * 0.08),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     SocalCard(
                //       icon: "assets/icons/google-icon.svg",
                //       press: () {},
                //     ),
                //     SocalCard(
                //       icon: "assets/icons/facebook-2.svg",
                //       press: () {},
                //     ),
                //     SocalCard(
                //       icon: "assets/icons/twitter.svg",
                //       press: () {},
                //     ),
                //   ],
                // ),
                // SizedBox(height: getProportionateScreenHeight(20)),
                // const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}