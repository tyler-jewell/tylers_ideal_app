import 'package:app/mutations/mutations.dart';
import 'package:app/pages/pages.dart';
import 'package:app/store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

extension on VxStatus? {
  bool get isLoading => this == VxStatus.loading;
}

/// The home page.
class HomePage extends StatelessWidget {
  /// Create the home page.
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: const HomeBody(),
    );
  }
}

/// The body of the home page.
class HomeBody extends StatelessWidget {
  /// Create the home page body.
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      const Divider(),

      /// Call to action buttons.
      'Call to actions'.text.xl2.bold.make(),

      /// hStack of action buttons
      [
        /// Calls the [GetUser] mutation.
        ElevatedButton(
          onPressed: GetUser.new,
          child: 'Get user'.text.make(),
        ).p12(),

        /// Calls the [SetUserAge] mutation.
        ElevatedButton(
          onPressed: SetUserAge.new,
          child: 'Update user age'.text.make(),
        ).p12(),
      ].hStack(alignment: MainAxisAlignment.center),

      const Divider(),

      'User data'.text.xl2.bold.make(),

      /// vStack of user data
      [
        /// Shows the user's name.
        ///
        /// Listens to the [GetUser] mutation.
        VxBuilder(
          builder: (_, AppStore d, s) =>
              'name: ${s.isLoading ? 'getting user name...' : d.user.name}'
                  .text
                  .make(),
          mutations: const {GetUser},
        ).p12(),

        /// Shows the user's age.
        ///
        /// Listens to the [GetUser] and [SetUserAge] mutations.
        ///
        VxBuilder(
          builder: (_, AppStore d, s) {
            final ageText = s.isLoading
                ? 'getting user age...'
                : d.user.age == 0
                    ? ''
                    : d.user.age;

            return 'age: $ageText'.text.make();
          },
          mutations: const {GetUser, SetUserAge},
        ).p12(),
      ].vStack(),

      const Divider(),

      /// Go to another page.
      ElevatedButton(
        onPressed: () => context.nextPage(const AnotherPage()),
        child: 'Go to another page'.text.make(),
      ),
    ].vStack(alignment: MainAxisAlignment.spaceAround);
  }
}
