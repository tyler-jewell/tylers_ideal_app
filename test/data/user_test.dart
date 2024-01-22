
import 'package:flutter_test/flutter_test.dart';
import 'package:vx_agent_builder/data/user/user.dart';

void main() {
  test('UserService.CreateUser', () async {
    // Create a mock UserService
    final mockUserService = MockUserService();

    // Create a User
    final user = User()
      ..id = '1'
      ..name = 'Alice';

    // Create a CreateUserRequest
    final request = CreateUserRequest()
      ..user = user;

    // Create a UserResponse
    final response = UserResponse()
      ..message = 'User created successfully';

    // Set up the mock UserService to return the UserResponse when CreateUser is called
    when(mockUserService.createUser(request)).thenAnswer((_) async => response);

    // Call CreateUser
    final result = await mockUserService.createUser(request);

    // Verify that the result is the expected UserResponse
    expect(result, equals(response));

    // Verify that CreateUser was called on the mock UserService
    verify(mockUserService.createUser(request)).called(1);
  });
}