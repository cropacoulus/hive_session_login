import 'package:flutter/material.dart';
import 'package:hive_session_login/constants.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({
    Key? key,
  }) : super(key: key);

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool isRemmberMe = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // size of the screen
    return Container(
      height: size.height * 0.05,
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.11),
      child: Row(
        children: [
          Theme(
            data: Theme.of(context).copyWith(unselectedWidgetColor: kPrimaryColor),
            child: Checkbox(
              value: isRemmberMe,
              onChanged: (value) {
                setState(() {
                  isRemmberMe = value!;
                });
              },
              checkColor: kPrimaryColorLight,
              activeColor: kPrimaryColor,
            ),
          ),
          const Text(
            'Remember me',
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
