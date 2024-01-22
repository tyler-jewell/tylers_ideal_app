import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vx_agent_builder/main.dart';
import 'package:vx_agent_builder/pages/pages.dart';
import 'package:vx_agent_builder/stores/base_store.dart';
import 'package:vxstate/vxstate.dart';

void main() {
  group('ListTile Golden Tests', () {
    goldenTest(
      'renders correctly',
      fileName: 'list_tile',
      builder: () => GoldenTestGroup(
        scenarioConstraints: const BoxConstraints(
          maxWidth: 390,
          maxHeight: 844,
          minWidth: 390,
          minHeight: 844,
        ),
        children: [
          GoldenTestScenario(
            name: 'with title',
            child: VxState(store: BaseStore(), child: const VxExampleApp()),
          ),
        ],
      ),
    );
  });
}
