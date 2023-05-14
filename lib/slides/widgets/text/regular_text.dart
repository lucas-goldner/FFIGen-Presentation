import 'package:flutter/cupertino.dart';
import 'package:fluttercon_2023_presentation/styles/fc_text_styles.dart';

class RegularText extends StatelessWidget {
  const RegularText(
    this.bodyText, {
    super.key,
    this.color,
    this.fontSize,
    this.fontWeight,
  });
  final String bodyText;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      bodyText,
      style: FCTextStyles.regularText(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
