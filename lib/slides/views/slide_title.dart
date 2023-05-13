import 'package:flutter/widgets.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/layout/layout_body.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/layout/layout_footer.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/layout/layout_header.dart';

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
          const Center(child: Text('Header')),
          flexUnits: 1,
        ),
        LayoutBody(const Center(child: Text('Body'))),
        LayoutFooter(const Center(child: Text('Footer'))),
      ],
    );
  }
}
