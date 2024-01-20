import 'package:app/mutations/mutations.dart';
import 'package:app/store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
