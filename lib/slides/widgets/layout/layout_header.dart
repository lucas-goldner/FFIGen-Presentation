import 'package:flutter/widgets.dart';
import 'package:fluttercon_2023_presentation/slides/model/enum/layout_flex_units.dart';

class LayoutHeader extends StatelessWidget {
  LayoutHeader(this.widget, {int? flexUnits, super.key})
      : _flexUnits = flexUnits ?? LayoutFlexUnits.header.flexUnits;

  final Widget widget;
  final int _flexUnits;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: _flexUnits,
      child: widget,
    );
  }
}
