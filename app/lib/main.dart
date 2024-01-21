import 'package:app/mutations/mutations.dart';
import 'package:app/pages/pages.dart';
import 'package:app/store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

/// Build store and make it part of app
void main() => runApp(VxState(store: AppStore(), child: const VxExampleApp()));

/// VxExampleApp
class VxExampleApp extends StatelessWidget {
  /// Create VxExampleApp
  const VxExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Styles for the AppBar
        appBarTheme: const AppBarTheme(),

        // Styles for the BottomNavigationBar
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
      ),
      home: VxBuilder<AppStore>(
        mutations: const {SetCurrentIndex},
        builder: (context, store, status) {
          return Scaffold(
            body: store.currentIndex == 0
                ? const HomePage()
                : const ProfilePage(),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              currentIndex: store.currentIndex,
              onTap: (_) => SetCurrentIndex(),
            ),
          );
        },
      ),
    );
  }
}
