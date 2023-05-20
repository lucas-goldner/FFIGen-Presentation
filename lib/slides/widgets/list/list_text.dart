import 'package:flutter/material.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/text/regular_text.dart';

class ListText extends StatelessWidget {
  const ListText(
    this.texts, {
    super.key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.dotted,
  });
  final List<String> texts;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final bool? dotted;

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: texts.length,
        itemBuilder: (context, index) => RegularText(
          dotted ?? false ? '\u2022 ${texts[index]}' : texts[index],
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          textAlign: textAlign,
        ),
      );
}
