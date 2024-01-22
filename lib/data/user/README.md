# User data class

The `User` class in a protobuf-generated Dart file typically includes the following methods and properties:

- `create`: A factory method to create a new instance of the `User` class.
- `fromBuffer`: A factory method to create a new `User` from a buffer.
- `fromJson`: A factory method to create a new `User` from a JSON string.
- `clone`: A method to create a deep copy of the `User` instance.
- `mergeFromMessage`: A method to merge the fields from another `User` instance into the current instance.
- `writeToBuffer`: A method to write the `User` instance to a buffer.
- `writeToJson`: A method to write the `User` instance to a JSON string.
- `mergeFromBuffer`: A method to merge the fields from a buffer into the current `User` instance.
- `mergeFromJson`: A method to merge the fields from a JSON string into the current `User` instance.

Assuming the `User` class has `id` and `name` fields, you can use the getters and setters like this:

## Building

To build new proto files after changing user.proto, run the following:

```bash
protoc --dart_out=grpc:lib -Ilib lib/data/user/user.proto
```

OR 

use melos from the project directory:

```bash
melos build
```
