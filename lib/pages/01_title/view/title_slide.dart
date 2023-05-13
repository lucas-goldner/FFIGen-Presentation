import 'package:flutter/material.dart';
import 'package:fluttercon_2023_presentation/generated/l10n.dart';

class TitleSlide extends StatelessWidget {
  const TitleSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.red,
      child: Text(S.of(context).flutterTitle),
    );
  }
}
