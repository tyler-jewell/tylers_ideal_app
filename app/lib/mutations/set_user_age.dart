import 'package:app/store.dart';
import 'package:vxstate/vxstate.dart';

/// Set the user's age.
class SetUserAge extends VxMutation<AppStore> {
  /// Perform the mutation
  @override
  Future<void> perform() async {
    /// Simulate a delay.
    await Future<void>.delayed(const Duration(seconds: 1));

    /// Set the user's age.
    store?.user.age = 43;
  }
}
