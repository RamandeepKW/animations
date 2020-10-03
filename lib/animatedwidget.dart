import 'package:flutter/material.dart';

class MyAnimatedWidget extends StatelessWidget {
  final Animation<double> animation;
  final Widget child;

  MyAnimatedWidget({this.animation, this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => Container(
        child: Opacity(opacity: animation.value, child: child),
      ),
      child: child,
    );
  }
}
