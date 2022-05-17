import 'package:flutter/material.dart';
import 'package:hive_session_login/constants.dart';

class SocialIcon extends StatelessWidget {
  final Widget icon;
  final Function()? press;
  const SocialIcon({
    Key? key,
    required this.icon,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryColorLight,
          ),
          shape: BoxShape.circle,
        ),
        child: icon,
      ),
    );
  }
}
