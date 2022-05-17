import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_session_login/components/rounded_button.dart';
import 'package:hive_session_login/constants.dart';
import 'package:hive_session_login/gen/assets.gen.dart';
import 'package:hive_session_login/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // size of the screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Edu',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Assets.icons.chat.svg(
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: 'Login',
              press: () {},
            ),
            RoundedButton(
              text: 'Register',
              press: () {},
              color: kPrimaryColorLight,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
