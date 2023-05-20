import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fluttercon_2023_presentation/generated/l10n.dart';
import 'package:fluttercon_2023_presentation/pages/01_title/widgets/title_slide_overlay.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/layout/layout_footer.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/layout/layout_header.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/text/footer_text.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/text/regular_text.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/text/title.dart';
import 'package:fluttercon_2023_presentation/styles/fc_gradients.dart';

class SlideTitle extends StatelessWidget {
  const SlideTitle({
    required this.titleText,
    this.subTitleText,
    this.footerText,
    super.key,
  });
  final String titleText;
  final String? subTitleText;
  final String? footerText;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LayoutHeader(
                Column(
                  children: [
                    const Spacer(),
                    Flexible(
                      child: TextTitle(titleText)
                          .animate(
                            onPlay: (controller) =>
                                controller.repeat(reverse: true),
                          )
                          .shimmer(
                            duration:
                                const Duration(seconds: 2, milliseconds: 500),
                            colors: FCGradients.animatedTitlePrimary.colors,
                          ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: RegularText(subTitleText ?? ''),
                    ),
                  ],
                ),
                flexUnits: 8,
              ),
              LayoutFooter(
                Column(
                  children: [
                    const Spacer(),
                    Center(
                      child: FooterText(S.of(context).presentationFooter),
                    ),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                ),
                flexUnits: 2,
              ),
            ],
          ),
          const TitleSlideOverlay(),
        ],
      );
}
