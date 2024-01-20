import 'package:app/mutations/mutations.dart';
import 'package:app/store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
