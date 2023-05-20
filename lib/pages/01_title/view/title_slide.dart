import 'package:flutter/material.dart';
import 'package:fluttercon_2023_presentation/generated/l10n.dart';
import 'package:fluttercon_2023_presentation/slides/views/slide_title.dart';
import 'package:fluttercon_2023_presentation/styles/fc_gradients.dart';

class TitleSlide extends StatelessWidget {
  const TitleSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: FCGradients.backgroundPrimary,
      ),
      child: SlideTitle(
        titleText: S.of(context).presentationTitle,
        subTitleText: S.of(context).presentationSubtitle,
      ),
    );
  }
}
