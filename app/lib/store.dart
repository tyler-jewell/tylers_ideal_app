import 'package:user/user.dart';
import 'package:vxstate/vxstate.dart';

/// Store definition
/// This is where all the in-memory data of your app is stored.
/// Mutations fetch data from APIs, databases etc. and keep it here.
///
class AppStore extends VxStore {
  /// The user
  User user = User();

  /// The current index
  int currentIndex = 0;
}
