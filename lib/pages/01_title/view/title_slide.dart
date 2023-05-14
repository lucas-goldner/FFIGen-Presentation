import 'package:flutter/material.dart';
import 'package:fluttercon_2023_presentation/slides/views/slide_title.dart';
import 'package:fluttercon_2023_presentation/styles/fc_gradients.dart';

class TitleSlide extends StatelessWidget {
  const TitleSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        gradient: FCGradients.backgroundPrimary,
      ),
      child: SlideTitle(titleText: ''),
    );
  }
}
