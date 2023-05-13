import 'package:flutter/material.dart';
import 'package:fluttercon_2023_presentation/presentation/widgets/directional_animation.dart';

import 'package:fluttercon_2023_presentation/styles/transitions/page_directional_animations.dart';

class DummySlideOne extends StatelessWidget {
  const DummySlideOne({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalAnimation(
      Container(
        color: Colors.green,
      ),
      100,
      PageDirectionalAnimations.bottom,
      curve: Curves.easeInSine,
    );
  }
}
