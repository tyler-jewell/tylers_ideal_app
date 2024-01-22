import 'package:vx_agent_builder/data/data.dart';
import 'package:vxstate/vxstate.dart';

/// Store definition
/// This is where all the in-memory data of your app is stored.
/// Mutations fetch data from APIs, databases etc. and keep it here.
///
class BaseStore extends VxStore {
  /// The user
  User user = User(id: 'base-user', name: 'User Name');

  /// The current index
  int currentIndex = 0;
}
