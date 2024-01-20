import 'package:app/mutations/mutations.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

/// Async call api button.
///
/// This button calls the CallAPI mutation.
///
/// Will render a loading indicator while the mutation is running.
///
class AsyncCallButton extends StatelessWidget {
  /// Create AsyncCallButton
  const AsyncCallButton({super.key});

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
