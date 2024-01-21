// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:user_data/user.dart';

void main() {
  group('User', () {
    test('can be instantiated', () {
      expect(User(), isNotNull);
    });
  });
}
