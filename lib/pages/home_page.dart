import 'package:flutter/material.dart';
import 'package:ideal_app/mutations/mutations.dart';
import 'package:ideal_app/pages/pages.dart';
import 'package:ideal_app/stores/stores.dart';
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
            key: const Key('about-button'),
            icon: const Icon(Icons.question_mark_sharp),
            onPressed: () => context.nextPage(const AboutPage()),
          ),
        ],
      ),
      body: [
        /// Shows the user's name.
        /// Listens to the [GetUser] mutation.
        VxBuilder<BaseStore>(
          mutations: const {GetUser},
          builder: (_, store, status) => switch (status) {
            VxStatus.loading => 'loading...',
            _ => store.user.name.isNotEmpty
                ? 'username: ${store.user.name}'
                : 'no data',
          }
              .text
              .xl2
              .make(),
        ).p4(),
        ElevatedButton(
          key: const Key('get-data-button'),
          onPressed: GetUser.new,
          child: 'Get user'.text.make(),
        ).p12(),
      ].vStack(alignment: MainAxisAlignment.center).centered(),
    );
  }
}
