// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:user/user.pb.dart';

void main() {
  group('User', () {
    test('can be instantiated', () {
      expect(User(), isNotNull);
    });
  });
}
