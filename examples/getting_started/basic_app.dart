import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

/// Build store and make it part of app
void main() => runApp(VxState(store: AppStore(), child: const VxExampleApp()));

/// Store definition
/// This is where all the in-memory data of your app is stored.
/// Mutations fetch data from APIs, databases etc. and keep it here.
///
class AppStore extends VxStore {
  /// The api response
  String response = '';

  /// The post call api response
  String otherResponse = '';
}

/// Call API
class CallAPI extends VxMutation<AppStore> {
  /// Perform the mutation
  @override
  Future<void> perform() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    store?.response = 'response-from-api';

    /// Perform the action after the perform.
    next(PostCallAPI.new);
  }
}

/// Post call api
class PostCallAPI extends VxMutation<AppStore> {
  /// Perform the mutation
  @override
  Future<void> perform() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    if (store?.response != null) {
      store?.otherResponse = 'received: ${store?.response}';
    } else {
      store?.otherResponse = 'no response';
    }
  }
}

/// VxExampleApp
class VxExampleApp extends StatelessWidget {
  /// Create VxExampleApp
  const VxExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Vx Example')),
        body: [
          const Divider(),
          const ResponseText(),
          const PostResponseText(),
          const AsyncCallAPIButton(),
          const Divider(),
        ].vStack().centered(),
      ),
    );
  }
}

/// Response text.
class ResponseText extends StatelessWidget {
  /// Create ResponseText
  const ResponseText({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBuilder(
      /// This widget only depends on CallAPI mutation.
      mutations: const {CallAPI},
      builder: (_, AppStore store, status) => switch (status) {
        /// The status when nothing has happened yet.
        VxStatus.none || null => 'no response - press button'.text.make().p12(),

        /// Status is loading.
        VxStatus.loading => const CircularProgressIndicator().centered().p12(),

        /// Status is success.
        VxStatus.success => 'response: ${store.response}'.text.make().p12(),

        /// Status is error.
        VxStatus.error => 'error'.text.make().p12(),
      },
    );
  }
}

/// Post response text.
class PostResponseText extends StatelessWidget {
  /// Create PostResponseText
  const PostResponseText({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBuilder(
      /// This widget only depends on PostCallAPI mutation.
      mutations: const {PostCallAPI},
      builder: (_, AppStore store, status) => switch (status) {
        /// The status when nothing has happened yet.
        VxStatus.none || null => 'no response - press button'.text.make().p12(),

        /// Status is loading.
        VxStatus.loading => const CircularProgressIndicator().centered().p12(),

        /// Status is success.
        VxStatus.success =>
          'other response: ${store.otherResponse}'.text.make().p12(),

        /// Status is error.
        VxStatus.error => 'error'.text.make().p12(),
      },
    );
  }
}

/// Async call api button.
///
/// This button calls the CallAPI mutation.
///
/// Will render a loading indicator while the mutation is running.
///
class AsyncCallAPIButton extends StatelessWidget {
  /// Create AsyncCallAPIButton
  const AsyncCallAPIButton({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBuilder(
      /// This widget only depends on CallAPI mutation.
      mutations: const {CallAPI},
      builder: (_, __, status) {
        return ElevatedButton(
          onPressed: CallAPI.new,
          child: status == VxStatus.loading
              ? const CircularProgressIndicator()
              : 'Call API'.text.make(),
        );
      },
    ).p12();
  }
}
