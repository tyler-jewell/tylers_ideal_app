import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

/// Another page.
class AnotherPage extends StatelessWidget {
  /// Create another page.
  const AnotherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Another Page')),
      body: 'This is another page'.text.make().centered(),
    );
  }
}
