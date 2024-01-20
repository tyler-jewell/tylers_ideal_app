import 'package:app/store.dart';
import 'package:vxstate/vxstate.dart';

/// Post call api
class PostCallAPI extends VxMutation<AppStore> {
  /// Perform the mutation
  @override
  Future<void> perform() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    if (store?.response != null) {
      store?.otherResponse = 'received: ${store?.response}';
    } else {
      store?.otherResponse = 'no response';
    }
  }
}
