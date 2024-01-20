//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references,
// ignore_for_file: public_member_api_docs
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'age', '3': 3, '4': 1, '5': 5, '10': 'age'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('''
CgRVc2VyEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhAKA2FnZRgDIAEoBV'''
    'IDYWdl');

@$core.Deprecated('Use userIdDescriptor instead')
const UserId$json = {
  '1': 'UserId',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `UserId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userIdDescriptor =
    $convert.base64Decode('CgZVc2VySWQSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = {
  '1': 'UpdateUserRequest',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.user.User', '10': 'user'},
  ],
};

/// Descriptor for `UpdateUserRequest`.
/// Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode(
  'ChFVcGRhdGVVc2VyUmVxdWVzdBIeCgR1c2VyGAEgASgLMgoudXNlci5Vc2VyUgR1c2Vy',
);

@$core.Deprecated('Use userResponseDescriptor instead')
const UserResponse$json = {
  '1': 'UserResponse',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `UserResponse`.
/// Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userResponseDescriptor = $convert
    .base64Decode('CgxVc2VyUmVzcG9uc2USGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');

const $core.Map<$core.String, $core.dynamic> UserServiceBase$json = {
  '1': 'UserService',
  '2': [
    {'1': 'CreateUser', '2': '.user.User', '3': '.user.UserResponse'},
    {'1': 'ReadUser', '2': '.user.UserId', '3': '.user.User'},
    {
      '1': 'UpdateUser',
      '2': '.user.UpdateUserRequest',
      '3': '.user.UserResponse',
    },
    {'1': 'DeleteUser', '2': '.user.UserId', '3': '.user.UserResponse'},
  ],
};

@$core.Deprecated('Use userServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    UserServiceBase$messageJson = {
  '.user.User': User$json,
  '.user.UserResponse': UserResponse$json,
  '.user.UserId': UserId$json,
  '.user.UpdateUserRequest': UpdateUserRequest$json,
};

/// Descriptor for `UserService`.
/// Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List userServiceDescriptor = $convert.base64Decode(
    'CgtVc2VyU2VydmljZRIsCgpDcmVhdGVVc2VyEgoudXNlci5Vc2VyGhIudXNlci5Vc2VyUmVzcG'
    '9uc2USJAoIUmVhZFVzZXISDC51c2VyLlVzZXJJZBoKLnVzZXIuVXNlchI5CgpVcGRhdGVVc2Vy'
    'EhcudXNlci5VcGRhdGVVc2VyUmVxdWVzdBoSLnVzZXIuVXNlclJlc3BvbnNlEi4KCkRlbGV0ZV'
    'VzZXISDC51c2VyLlVzZXJJZBoSLnVzZXIuVXNlclJlc3BvbnNl');
