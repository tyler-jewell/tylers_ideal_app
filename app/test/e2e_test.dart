import 'package:app/main.dart';
import 'package:app/pages/pages.dart';
import 'package:app/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:velocity_x/velocity_x.dart';

/// End-to-end test:
/// 1. Starts the app.
/// 2. Taps the Get user button.
/// 3. Taps the question mark icon to go to the AboutPage.
/// 4. Taps the back button to go back to the HomePage.
/// 5. Taps the profile tab to go to the ProfilePage.
/// 6. Taps the ElevatedButton to go to the UpdateNamePage.
/// 7. Enters 'Test Name' into the TextFormField and taps the button.
/// 8. Expects the new name to be displayed on the ProfilePage.

Future<void> main() async {
  // Load app fonts to ensure goldens have actual text.
  await loadAppFonts();

  testWidgets('End-to-end test', (WidgetTester tester) async {
    // Start the app
    await tester.pumpWidget(
      VxState(store: AppStore(), child: const VxExampleApp()),
    );

    /// On HomePage, take screenshot for golden test
    await expectLater(
      find.byType(HomePage),
      matchesGoldenFile('goldens/home_page.png'),
    );

    /// Tap the Get user button and wait for 2 seconds
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle(const Duration(seconds: 1));

    /// On HomePage with data, take screenshot for golden test
    await expectLater(
      find.byType(HomePage),
      matchesGoldenFile('goldens/home_page-data.png'),
    );

    /// Tap the question mark icon to go to the AboutPage
    await tester.tap(find.byIcon(Icons.question_mark_sharp));
    await tester.pumpAndSettle();

    /// On AboutPage, take screenshot for golden test
    await expectLater(
      find.byType(AboutPage),
      matchesGoldenFile('goldens/about_page.png'),
    );

    /// Tap back button.
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();

    /// On HomePage
    expect(find.byType(HomePage), findsOneWidget);

    /// Tap the profile tab to go to the ProfilePage
    await tester.tap(find.byIcon(Icons.person));
    await tester.pumpAndSettle();

    /// On ProfilePage, take screenshot for golden test
    await expectLater(
      find.byType(ProfilePage),
      matchesGoldenFile('goldens/profile_page.png'),
    );

    /// Tap the ElevatedButton to go to the UpdateNamePage
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    /// On UpdateNamePage, take screenshot for golden test
    await expectLater(
      find.byType(UpdateNamePage),
      matchesGoldenFile('goldens/update_name_page.png'),
    );

    /// Enter 'Test Name' into the TextFormField and tap the button
    await tester.enterText(find.byType(TextFormField), 'Test Name');
    await tester.pumpAndSettle();

    /// On UpdateNamePage with text, take screenshot for golden test
    await expectLater(
      find.byType(UpdateNamePage),
      matchesGoldenFile('goldens/update_name_page-text.png'),
    );

    /// Tap the button
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    /// On ProfilePage, with updated name, take screenshot for golden test
    await expectLater(
      find.byType(ProfilePage),
      matchesGoldenFile('goldens/profile_page-updated.png'),
    );
  });
}
