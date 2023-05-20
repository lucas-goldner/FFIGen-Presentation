import 'package:flutter/widgets.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/layout/layout_body.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/layout/layout_header.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/list/list_text.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/text/title.dart';

class SlideTitleAndPhotoAlt extends StatelessWidget {
  const SlideTitleAndPhotoAlt(
    this.image,
    this.text,
    this.items, {
    super.key,
    this.itemListTextcolor,
    this.itemListfontSize,
    this.itemListfontWeight,
    this.itemListtextAlign,
    this.itemListdotted,
  });

  final Image image;
  final String text;
  final List<String> items;
  final Color? itemListTextcolor;
  final double? itemListfontSize;
  final FontWeight? itemListfontWeight;
  final TextAlign? itemListtextAlign;
  final bool? itemListdotted;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: Column(
              children: [
                LayoutHeader(
                  Column(
                    children: [
                      const Spacer(),
                      TextTitle(text),
                    ],
                  ),
                  flexUnits: 2,
                ),
                LayoutBody(
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 40),
                    child: ListText(
                      items,
                      textAlign: TextAlign.start,
                      dotted: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: image,
          )
        ],
      );
}
