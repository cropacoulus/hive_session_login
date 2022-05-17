import 'package:flutter/material.dart';
import 'package:hive_session_login/components/already_have_an_account_check.dart';
import 'package:hive_session_login/components/rounded_button.dart';
import 'package:hive_session_login/components/rounded_input_field.dart';
import 'package:hive_session_login/components/rounded_password_field.dart';
import 'package:hive_session_login/gen/assets.gen.dart';
import 'package:hive_session_login/screens/login/components/background.dart';
import 'package:hive_session_login/screens/login/components/forgot_password.dart';
import 'package:hive_session_login/screens/login/components/remember_me.dart';
import 'package:hive_session_login/screens/signup/signup_page.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // size of the screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Assets.icons.login.svg(height: size.height * 0.35),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            const ForgotPassword(),
            // remember me checkbox
            const RememberMe(),
            RoundedButton(
              text: 'Login',
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpPage(),
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.1),
          ],
        ),
      ),
    );
  }
}
