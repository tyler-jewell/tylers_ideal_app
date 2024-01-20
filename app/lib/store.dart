import 'package:vxstate/vxstate.dart';

/// Store definition
/// This is where all the in-memory data of your app is stored.
/// Mutations fetch data from APIs, databases etc. and keep it here.
///
class AppStore extends VxStore {
  /// The api response
  String response = '';

  /// The post call api response
  String otherResponse = '';
}
