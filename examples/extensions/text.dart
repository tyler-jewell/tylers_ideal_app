/// https://velocityx.dev/docs/text

library;

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TextExtensionWidget extends StatelessWidget {
  const TextExtensionWidget({super.key});

  /// Text widget with a size of xl2 (https://velocityx.dev/docs/text#font-scale)
  /// and a red100 color (https://velocityx.dev/docs/text#text-color)
  /// and bold (https://velocityx.dev/docs/text#font-weight)
  /// and centered (https://velocityx.dev/docs/text#text-alignment)
  /// and underlined (https://velocityx.dev/docs/text#text-decoration)
  ///
  /// https://velocityx.dev/docs/text#text-size
  @override
  Widget build(BuildContext context) =>
      'Pawan'.text.xl2.center.bold.red100.underline.make();
}
