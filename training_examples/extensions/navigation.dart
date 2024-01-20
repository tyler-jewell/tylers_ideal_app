import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

/// https://velocityx.dev/docs/extensions/context#navigation
///
/// NavigationWidget
class NavigationWidget extends StatelessWidget {
  /// Create a navigation widget
  const NavigationWidget({super.key});

  /// Navigate to a new page
  /// https://velocityx.dev/docs/extensions/context#navigation
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.nextPage(const Text('Next Page')),
      child: const Text('Next Page'),
    );
  }
}
