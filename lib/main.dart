import 'package:flutter/material.dart';
import 'package:ideal_app/mutations/mutations.dart';
import 'package:ideal_app/pages/pages.dart';
import 'package:ideal_app/stores/stores.dart';
import 'package:velocity_x/velocity_x.dart';

/// Build store and make it part of app
void main() => runApp(VxState(store: BaseStore(), child: const VxExampleApp()));

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
      home: VxBuilder<BaseStore>(
        mutations: const {SetCurrentIndex},
        builder: (context, store, status) {
          return Scaffold(
            body: store.currentIndex == 0
                ? const HomePage()
                : const ProfilePage(),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(key: Key('bottom-nav-home'), Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(key: Key('bottom-nav-profile'), Icons.person),
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
