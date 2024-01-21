import 'package:app/mutations/update_name.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

/// Update name page.
///
/// Contains a standard text form and a submit button.
class UpdateNamePage extends StatelessWidget {
  /// Create update name page.
  const UpdateNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: 'Update name'.text.make()),
      body: [
        /// Text form field
        TextFormField(
          controller: controller,
          decoration: const InputDecoration(
            labelText: 'Name',
            hintText: 'Enter your name',
          ),
        ).p12(),

        /// Submit button
        ElevatedButton(
          onPressed: () {
            UpdateName(controller.text);
            Navigator.pop(context);
          },
          child: 'Submit'.text.make(),
        ).p12(),
      ].vStack(alignment: MainAxisAlignment.center),
    );
  }
}
