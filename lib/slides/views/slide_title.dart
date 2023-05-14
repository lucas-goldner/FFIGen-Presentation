import 'package:flutter/widgets.dart';
import 'package:fluttercon_2023_presentation/generated/l10n.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/layout/layout_body.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/layout/layout_footer.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/layout/layout_header.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/text/title.dart';

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
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LayoutHeader(
          Column(
            children: [
              const Spacer(),
              TextTitle(S.of(context).presentationTitle)
            ],
          ),
          flexUnits: 3,
        ),
        LayoutBody(
          const Column(
            children: [
              Center(child: Text('Body')),
              Spacer(),
            ],
          ),
          flexUnits: 2,
        ),
        LayoutFooter(const Center(child: Text('Footer'))),
      ],
    );
  }
}
