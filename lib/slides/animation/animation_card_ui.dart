import 'package:flutter/material.dart';

class AnimationCardUi extends StatelessWidget {
  const AnimationCardUi({super.key, required this.animationWidget});

  final Widget animationWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 250,
      child: animationWidget,
    );
  }
}
