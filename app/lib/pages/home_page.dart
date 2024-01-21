import 'package:app/mutations/mutations.dart';
import 'package:app/pages/pages.dart';
import 'package:app/store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

/// The HomePage
class HomePage extends StatelessWidget {
  /// Create the home page.
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Home page'.text.make(),
        actions: [
          IconButton(
            icon: const Icon(Icons.question_mark_sharp),
            onPressed: () => context.nextPage(const AboutPage()),
          ).p12(),
        ],
      ),
      body: [
        /// Shows the user's name.
        /// Listens to the [GetUser] mutation.
        VxBuilder<AppStore>(
          mutations: const {GetUser},
          builder: (_, store, status) => switch (status) {
            VxStatus.loading => 'loading...',
            _ => store.user.name.isNotEmpty
                ? 'data: ${store.user.name}'
                : 'no data',
          }
              .text
              .xl2
              .make(),
        ).p4(),
        ElevatedButton(
          onPressed: GetUser.new,
          child: 'Get user'.text.make(),
        ).p12(),
      ].vStack(alignment: MainAxisAlignment.center).centered(),
    );
  }
}
