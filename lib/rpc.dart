import 'dart:convert';
import 'dart:io';

import 'package:poc_frontend/api/lib/api.dart';

Future<String> rpcLoginPost(
  String loginEmail,
  String loginPassword,
) async {
  final response = await defaultApiClient.invokeAPI('/rpc/login', 'POST', [], {'login_email': loginEmail, 'login_password': loginPassword}, {}, {});
  if (response.statusCode >= HttpStatus.badRequest) {
    throw ApiException(response.statusCode, response.body);
  }
  Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
  return body['session_token'];
}

rpcSignUpPost(
  String email,
  String name,
  String password,
) async {
  final response = await defaultApiClient.invokeAPI('/rpc/sign_up', 'POST', [], {'email': email, 'name': name, 'password': password}, {}, {});
  if (response.statusCode >= HttpStatus.badRequest) {
    throw ApiException(response.statusCode, response.body);
  }
  Map<String, dynamic> body = response.body as Map<String, dynamic>;
  return body['session_token'];
}
