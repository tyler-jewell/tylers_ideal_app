/// https://velocityx.dev/docs/flex
library;

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

/// VStack widget
class VStackWidget extends StatelessWidget {
  const VStackWidget({super.key});

  /// Extend a list to have a VStack layout w/ scrolling and padding
  /// https://velocityx.dev/docs/flex#using-extension-method
  @override
  Widget build(BuildContext context) => [
        const Text('VelocityX is Super'),
        const Text('Sample Text'),
        const Text('Yet, Another Sample Text'),
      ].vStack().scrollVertical().p20();
}

/// HStack widget
class HStackWidget extends StatelessWidget {
  const HStackWidget({super.key});

  /// Extend a list to have a HStack layout w/ scrolling and padding
  /// https://velocityx.dev/docs/flex#using-extension-method-1
  @override
  Widget build(BuildContext context) => [
        const Text('VelocityX is Super'),
        const Text('Sample Text'),
        const Text('Yet, Another Sample Text'),
      ].hStack().scrollHorizontal().p20();
}

/// VBlock widget
///
/// A VelocityX VxBlock widget is used to display it's children at block-level.
/// A block-level element always starts on a new line and takes up the full
/// width available (stretches out to the left and right as far as it can).
///
/// https://velocityx.dev/docs/flex#vxblock-class
///
///
/// Alternatively, you can use the constructor to create a VxBlock widget.
///
///   VxBlock({
///     Key key,
///     MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
///     TextDirection textDirection,
///     VerticalDirection verticalDirection = VerticalDirection.down,
///     TextBaseline textBaseline,
///     List<Widget> children = const <Widget>[],
///    });
///
class VBlockWidget extends StatelessWidget {
  const VBlockWidget({super.key});

  @override
  Widget build(BuildContext context) => VxBlock(
        verticalDirection: VerticalDirection.up,
        children: [
          'VelocityX is Super'.text.make().box.height(90).red500.make(),
          'VelocityX increase productivity'.text.make().box.red500.make(),
        ],
      );
}
