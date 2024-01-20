/// https://velocityx.dev/docs/padding
library;

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PaddingAllSides extends StatelessWidget {
  const PaddingAllSides({super.key});

  // Apply padding of 4 pixels on all sides
  @override
  Widget build(BuildContext context) => Container().p4();
}

/// Padding horizontally
/// https://velocityx.dev/docs/padding#padding-horizontally
class PaddingHorizontally extends StatelessWidget {
  const PaddingHorizontally({super.key});

  // Apply padding of 4 pixels on left and right sides
  @override
  Widget build(BuildContext context) => Container().px4();
}

/// Padding vertically
/// https://velocityx.dev/docs/padding#padding-vertically
class PaddingVertically extends StatelessWidget {
  const PaddingVertically({super.key});

  // Apply padding of 4 pixels on top and bottom sides
  @override
  Widget build(BuildContext context) => Container().py4();
}
