import 'package:flutter/material.dart';
import 'package:fluttercon_2023_presentation/presentation/widgets/fade_animation.dart';

class DummySlideTwo extends StatelessWidget {
  const DummySlideTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 1,
      child: Container(
        color: Colors.yellow,
      ),
    );
  }
}
