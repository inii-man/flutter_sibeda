import 'package:flutter/material.dart';
import 'package:shop_app/screens/init_screen.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, InitScreen.routeName);
            },
            child: const Text("Back to home"),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
