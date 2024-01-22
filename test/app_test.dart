import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vx_agent_builder/main.dart';
import 'package:vx_agent_builder/pages/pages.dart';
import 'package:vx_agent_builder/stores/base_store.dart';
import 'package:vxstate/vxstate.dart';

const screenWidth = 390.0;
const screenHeight = 844.0;

const scenarioConstraints = BoxConstraints(
  maxWidth: screenWidth,
  maxHeight: screenHeight,
  minWidth: screenWidth,
  minHeight: screenHeight,
);

void main() {
  goldenTest(
    'Golden',
    fileName: 'goldens',
    whilePerforming: (tester) async {
      await tester.tap(find.byKey(const Key('bottom-nav-profile')));
      await tester.pumpAndSettle();
      await tester.
    },
    builder: () => GoldenTestGroup(
      scenarioConstraints: scenarioConstraints,
      children: [
        GoldenTestScenario(
          name: 'initial',
          child: VxState(store: BaseStore(), child: const VxExampleApp()),
        ),
      ],
    ),
  );
}
