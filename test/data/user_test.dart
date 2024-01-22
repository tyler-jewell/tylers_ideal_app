import 'package:flutter_test/flutter_test.dart';
import 'package:protobuf/protobuf.dart';
import 'package:vx_agent_builder/data/user/user.dart';

void main() {
  test('User.writeToJsonMap', () async {
    expect(
      User(id: 'test', name: 'test').writeToJsonMap(),
      {'1': 'test', '2': 'test'},
    );
  });

  test('User.create', () async {
    expect(User.create(), isA<User>());
  });

  test('User.fromJson', () async {
    expect(
      User.fromJson('{"1": "test", "2": "test"}').name,
      'test',
    );
  });

  test('User.fromBuffer', () async {
    expect(
      User.fromBuffer([
        10,
        4,
        116,
        101,
        115,
        116,
        18,
        4,
        116,
        101,
        115,
        116,
      ]).name,
      'test',
    );
  });

  test('User.deepCopy', () async {
    expect(
      User(id: 'test', name: 'test').deepCopy().name,
      'test',
    );
  });

  test('User.clearId', () async {
    final user = User(id: 'test', name: 'test')..clearId();
    expect(user.id, '');
  });

  test('User.clearName', () async {
    final user = User(id: 'test', name: 'test')..clearName();
    expect(user.name, '');
  });
}
