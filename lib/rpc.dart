import 'dart:io';

import 'package:poc_frontend/custom-api/lib/api.dart';


Future<String> rpcLoginPost(
  String loginEmail,
  String loginPassword,
) async {
  final response = await defaultApiClient.invokeAPI('/rpc/login', 'POST', [], {loginEmail: loginEmail, loginPassword: loginPassword}, {}, {}, null);
  if (response.statusCode >= HttpStatus.badRequest) {
    throw ApiException(response.statusCode, response.body);
  }
  Map<String, dynamic> body = response.body as Map<String, dynamic>;
  return body['session_token'];
}

rpcSignUpPost(
  String email,
  String name,
  String password,
) async {
  final response = await defaultApiClient.invokeAPI('/rpc/sign_up', 'POST', [], {email: email, name: name, password: password}, {}, {}, null);
  if (response.statusCode >= HttpStatus.badRequest) {
    throw ApiException(response.statusCode, response.body);
  }
  Map<String, dynamic> body = response.body as Map<String, dynamic>;
  return body['session_token'];
}