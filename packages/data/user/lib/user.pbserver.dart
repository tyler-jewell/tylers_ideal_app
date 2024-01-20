//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, public_member_api_docs
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package:user/user.pb.dart' as $0;
import 'package:user/user.pbjson.dart';

export 'user.pb.dart';

abstract class UserServiceBase extends $pb.GeneratedService {
  $async.Future<$0.UserResponse> createUser(
    $pb.ServerContext ctx,
    $0.User request,
  );
  $async.Future<$0.User> readUser($pb.ServerContext ctx, $0.UserId request);
  $async.Future<$0.UserResponse> updateUser(
    $pb.ServerContext ctx,
    $0.UpdateUserRequest request,
  );
  $async.Future<$0.UserResponse> deleteUser(
    $pb.ServerContext ctx,
    $0.UserId request,
  );

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateUser':
        return $0.User();
      case 'ReadUser':
        return $0.UserId();
      case 'UpdateUser':
        return $0.UpdateUserRequest();
      case 'DeleteUser':
        return $0.UserId();
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall(
    $pb.ServerContext ctx,
    $core.String methodName,
    $pb.GeneratedMessage request,
  ) {
    switch (methodName) {
      case 'CreateUser':
        return this.createUser(ctx, request as $0.User);
      case 'ReadUser':
        return this.readUser(ctx, request as $0.UserId);
      case 'UpdateUser':
        return this.updateUser(ctx, request as $0.UpdateUserRequest);
      case 'DeleteUser':
        return this.deleteUser(ctx, request as $0.UserId);
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => UserServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => UserServiceBase$messageJson;
}
