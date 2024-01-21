import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vx_agent_builder/mutations/mutations.dart';
import 'package:vx_agent_builder/pages/pages.dart';
import 'package:vx_agent_builder/stores/stores.dart';

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
        ElevatedButton(onPressed: GetUser.new, child: 'Get user'.text.make())
            .p12(),
      ].vStack(alignment: MainAxisAlignment.center).centered(),
    );
  }
}
