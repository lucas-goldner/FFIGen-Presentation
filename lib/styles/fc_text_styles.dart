import 'package:flutter/cupertino.dart';
import 'package:fluttercon_2023_presentation/generated/fonts.gen.dart';

enum FCTextStyles {
  title(
    TextStyle(
      fontSize: 116,
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.graphik,
    ),
  );

  const FCTextStyles(this.style);

  final TextStyle style;
}
