import 'package:flutter/material.dart';
import 'package:hive_session_login/constants.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // size of the screen
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.155),
      child: GestureDetector(
        onTap: () {},
        child: const Text(
          'Forgot Password?',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
