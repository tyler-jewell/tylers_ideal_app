import 'package:app/store.dart';
import 'package:vxstate/vxstate.dart';

/// Update user's name.
class UpdateName extends VxMutation<AppStore> {
  /// Create update name mutation.
  UpdateName(this.name);

  /// The name to update.
  final String name;

  @override
  void perform() {
    store?.user.name = name;
  }
}
