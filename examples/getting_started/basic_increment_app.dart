import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

// Build store and make it part of app
void main() => runApp(VxState(store: MyStore(), child: const MyApp()));

// Store definition
class MyStore extends VxStore {
  int count = 0;
}

// Mutations
class Increment extends VxMutation<MyStore> {
  @override
  void perform() => store?.count++;
}

/// My app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Define when this widget should re render
    VxState.watch(context, on: [Increment]);

    /// Get access to the store
    final store = VxState.store as MyStore;

    return MaterialApp(
      home: Scaffold(
        body: [
          'Count: ${store.count}'.text.make(),
          const ElevatedButton(
            onPressed: Increment.new,
            child: Text('Increment'),
          ),
        ].vStack().centered(),
      ),
    );
  }
}
