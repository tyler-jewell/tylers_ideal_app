// flutter_test_config.dart

import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await loadFonts();

  return AlchemistConfig.runWithConfig(
    config: AlchemistConfig(
      platformGoldensConfig: PlatformGoldensConfig(
        platforms: {HostPlatform.macOS, HostPlatform.linux},
      ),
      ciGoldensConfig: const CiGoldensConfig(
        /// If ENV CI=true, then enable golden tests
        /// Otherwise, disable golden tests
        enabled: bool.fromEnvironment('CI'),
      ),
    ),
    run: testMain,
  );
}
