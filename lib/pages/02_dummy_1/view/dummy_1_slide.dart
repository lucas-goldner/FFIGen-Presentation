import 'package:flutter/material.dart';
import 'package:fluttercon_2023_presentation/presentation/widgets/directional_animation.dart';
import 'package:fluttercon_2023_presentation/slides/views/slide_title_and_photo.dart';

import 'package:fluttercon_2023_presentation/styles/transitions/page_directional_animations.dart';

class DummySlideOne extends StatelessWidget {
  const DummySlideOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const DirectionalAnimation(
      ColoredBox(
        color: Colors.green,
        child: SlideTitleAndPhoto(),
      ),
      100,
      PageDirectionalAnimations.bottom,
      curve: Curves.easeInSine,
    );
  }
}
