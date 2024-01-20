import 'package:app/pages/pages.dart';
import 'package:app/store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

/// Build store and make it part of app
void main() => runApp(VxState(store: AppStore(), child: const VxExampleApp()));

/// VxExampleApp
class VxExampleApp extends StatelessWidget {
  /// Create VxExampleApp
  const VxExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vx Agent Builder',
      home: HomePage(),
    );
  }
}
