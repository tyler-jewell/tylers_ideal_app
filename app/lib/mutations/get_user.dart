import 'package:app/store.dart';
import 'package:user/user.dart';
import 'package:vxstate/vxstate.dart';

/// Get user.
class GetUser extends VxMutation<AppStore> {
  /// Perform the mutation
  @override
  Future<void> perform() async {
    /// Simulate a delay.
    await Future<void>.delayed(const Duration(seconds: 1));

    /// Set the user.
    store?.user = User()
      ..age = 42
      ..id = '1234'
      ..name = 'John Doe';

    /// Call the set user age which will update user's age
    // next(SetUserAge.new);
  }
}
