import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

/// https://velocityx.dev/docs/supervx/vxtoast
///
class VxToastWidget extends StatelessWidget {
  const VxToastWidget({super.key});

  /// Show a toast message
  /// https://velocityx.dev/docs/supervx/vxtoast#show-toast
  ///
  /// Can also show using context: context.showToast(msg: "Hello from vx");
  /// Show loading: VxToast.showLoading(context, msg: "Loading");
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        VxToast.show(context, msg: 'Hello from vx');
      },
      child: const Text('Show Toast'),
    );
  }
}
