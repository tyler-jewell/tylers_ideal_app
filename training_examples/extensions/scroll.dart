/// https://velocityx.dev/docs/scroll

library;

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ScrollWidget extends StatelessWidget {
  const ScrollWidget({super.key});

  /// Add scrolling and padding to a list of widgets
  /// https://velocityx.dev/docs/scroll#vxscrollvertical
  @override
  Widget build(BuildContext context) => [
        const Text('VelocityX is Super'),
        const Text('Sample Text'),
        const Text('Yet, Another Sample Text'),
      ].vStack().scrollVertical().p20();
}
