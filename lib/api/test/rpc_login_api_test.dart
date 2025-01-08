//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:openapi/api.dart';
import 'package:test/test.dart';

/// tests for RpcLoginApi
void main() {
  final instance = RpcLoginApi();

  group('tests for RpcLoginApi', () {
    test('test rpcLoginPost correct ac', () async {
      String sessionToken = await instance.rpcLoginPost('kiu', 'kiu');
      expect(sessionToken.length, 36);
    });

    test('test rpcLoginPost wrong ac', () async {
      String s = await instance.rpcLoginPost('asdfasdf', 'saeshdcxvb');
      Map<String, dynamic> res = JsonCodec().decode(s);
      expect(res['code'], 'P0001');
      expect(res['message'], 'Invalid email or password');
    });
  });
}
