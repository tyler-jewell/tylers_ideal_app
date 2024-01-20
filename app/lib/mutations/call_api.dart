import 'package:app/mutations/mutations.dart';
import 'package:app/store.dart';
import 'package:vxstate/vxstate.dart';

/// Call API
class CallAPI extends VxMutation<AppStore> {
  /// Perform the mutation
  @override
  Future<void> perform() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    store?.response = 'response-from-api';

    /// Perform the action after the perform.
    next(PostCallAPI.new);
  }
}
