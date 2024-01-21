import 'package:vx_agent_builder/data/data.dart';
import 'package:vx_agent_builder/stores/stores.dart';
import 'package:vxstate/vxstate.dart';

/// Get user.
class GetUser extends VxMutation<BaseStore> {
  /// Perform the mutation
  @override
  Future<void> perform() async {
    /// Simulate a delay.
    await Future<void>.delayed(const Duration(seconds: 1));

    /// Set the in-memory user.
    store?.user = User()
      ..id = '1234'
      ..name = 'John Doe';
  }
}
