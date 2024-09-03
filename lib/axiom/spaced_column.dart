import 'package:flutter/material.dart';
import 'package:geetha/axiom/app_spacer.dart';

class SpacedColumn extends StatelessWidget {
  const SpacedColumn({
    super.key,
    this.defaultHeight = 4.0,
    this.margin,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.min,
    this.divider,
    required this.children,
  });

  final double defaultHeight;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;
  final Widget? divider;
  final EdgeInsets? margin;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final spacerWidget = AppSpacer(height: defaultHeight);

    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: children.expand((widget) => [widget, spacerWidget, if(divider != null) divider!]).toList(),
      ),
    );
  }
}
