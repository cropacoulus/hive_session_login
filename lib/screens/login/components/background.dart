import 'package:flutter/material.dart';
import 'package:hive_session_login/gen/assets.gen.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // size of the screen
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image(
              image: Assets.images.mainTop,
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image(
              image: Assets.images.loginBottom,
              width: size.width * 0.4,
            ),
          ),
          child
        ],
      ),
    );
  }
}
