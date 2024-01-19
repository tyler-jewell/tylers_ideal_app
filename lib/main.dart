import 'package:flutter/material.dart';
import 'package:vxstate/vxstate.dart';

/// My store
class MyStore extends VxStore {
  /// Data to be fetched
  String data = '';

  /// Status of the request
  VxStatus requestStatus = VxStatus.none;
}

/// Define a mutation for the asynchronous operation
class FetchDataMutation extends VxMutation<MyStore> {
  @override
  Future<void> perform() async {
    // Indicate that the request is loading
    store!.requestStatus = VxStatus.loading;
    store!.data = 'Data fetched successfully: ${store!.data}';
    store!.requestStatus = VxStatus.error;
    store!.requestStatus = VxStatus.none;
    store!.requestStatus = VxStatus.success;
  }
}

void main() {
  runApp(
    VxState(
      store: MyStore(),
      child: const MyApp(),
    ),
  );
}

/// My app
class MyApp extends StatelessWidget {
  /// Constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'VxState Async Request Example',
      home: HomeScreen(),
    );
  }
}

/// Home screen
class HomeScreen extends StatelessWidget {
  /// Constructor
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Async Request with VxState')),
      body: VxBuilder<MyStore>(
        mutations: const {FetchDataMutation},
        builder: (context, MyStore store, VxStatus? status) {
          debugPrint('Status: $status');
          return switch (status) {
            VxStatus.loading =>
              const Center(child: CircularProgressIndicator()),
            VxStatus.success => Center(child: Text(store.data)),
            VxStatus.error => const Center(child: Text('Error occurred')),
            _ => const Center(
                child: ElevatedButton(
                  onPressed: FetchDataMutation.new,
                  child: Text('Fetch Data'),
                ),
              ),
          };
        },
      ),
    );
  }
}
