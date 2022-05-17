import 'package:flutter/material.dart';
import 'package:hive_session_login/gen/assets.gen.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // size of the screen
    return Container(
      height: size.height,
      width: double.infinity,
      // here i can use size.width to make the page full width but i prefer to use double.infinity
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image(
              image: Assets.images.signupTop,
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image(
              image: Assets.images.mainBottom,
              width: size.width * 0.25,
            ),
          ),
          child
        ],
      ),
    );
  }
}
