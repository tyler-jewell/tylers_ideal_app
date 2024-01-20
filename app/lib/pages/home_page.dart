import 'package:app/pages/pages.dart';
import 'package:app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

/// The home page.
class HomePage extends StatelessWidget {
  /// Create the home page.
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: [
        const Divider(),
        const ResponseText(),
        const PostResponseText(),
        const AsyncCallButton(),
        const Divider(),
        ElevatedButton(
          onPressed: () => context.nextPage(const AnotherPage()),
          child: 'Go to another page'.text.make(),
        ),
      ].vStack().centered(),
    );
  }
}
