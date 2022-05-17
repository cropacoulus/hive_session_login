import 'package:flutter/material.dart';
import 'package:hive_session_login/gen/assets.gen.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // size of the screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Assets.images.mainTop.image(
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Assets.images.mainBottom.image(
              width: size.width * 0.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
