import 'package:flutter/widgets.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/text/gradient_text.dart';
import 'package:fluttercon_2023_presentation/styles/fc_gradients.dart';
import 'package:fluttercon_2023_presentation/styles/fc_text_styles.dart';

class TextTitle extends StatelessWidget {
  const TextTitle(this.titleText, {super.key});
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return GradientText(
      titleText,
      gradient: FCGradients.backgroundPrimary.gradient,
      style: FCTextStyles.title.style,
    );
  }
}
