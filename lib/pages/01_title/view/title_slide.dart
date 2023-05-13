import 'package:flutter/material.dart';
import 'package:fluttercon_2023_presentation/slides/views/slide_title.dart';

class TitleSlide extends StatelessWidget {
  const TitleSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const SlideTitle(titleText: ''),
    );
  }
}
