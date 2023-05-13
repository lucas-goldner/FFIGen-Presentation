import 'package:flutter/material.dart';
import 'package:fluttercon_2023_presentation/presentation/widgets/directional_animation.dart';

class DummySlideOne extends StatelessWidget {
  const DummySlideOne({super.key});

  @override
  Widget build(BuildContext context) {
    return DirectionalAnimation(
      delay: 1,
      child: Container(
        color: Colors.green,
      ),
    );
  }
}
