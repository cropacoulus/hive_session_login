import 'package:flutter/material.dart';
import 'package:hive_session_login/components/already_have_an_account_check.dart';
import 'package:hive_session_login/components/rounded_button.dart';
import 'package:hive_session_login/components/rounded_input_field.dart';
import 'package:hive_session_login/components/rounded_password_field.dart';
import 'package:hive_session_login/constants.dart';
import 'package:hive_session_login/gen/assets.gen.dart';
import 'package:hive_session_login/screens/login/login_page.dart';
import 'package:hive_session_login/screens/signup/components/background.dart';
import 'package:hive_session_login/screens/signup/components/or_divider.dart';
import 'package:hive_session_login/screens/signup/components/social_icon.dart';

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
              'SIGN UP',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Assets.icons.signup.svg(height: size.height * 0.35),
            RoundedInputField(
              hintText: 'Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'SIGNUP',
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginPage();
                    },
                  ),
                );
              },
            ),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  icon: Assets.icons.facebook.svg(
                    width: 20,
                    height: 20,
                  ),
                  press: () {},
                ),
                SocialIcon(
                  icon: Assets.icons.twitter.svg(
                    width: 20,
                    height: 20,
                  ),
                  press: () {},
                ),
                SocialIcon(
                  icon: Assets.icons.googlePlus.svg(
                    width: 20,
                    height: 20,
                  ),
                  press: () {},
                ),
              ],
            ),
            SizedBox(height: size.height * 0.1),
          ],
        ),
      ),
    );
  }
}

