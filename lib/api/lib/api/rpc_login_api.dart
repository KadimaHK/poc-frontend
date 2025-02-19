//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RpcLoginApi {
  RpcLoginApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Don't use this function with GET method, use POST method instead
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] loginEmail (required):
  ///
  /// * [String] loginPassword (required):
  Future<Response> rpcLoginGetWithHttpInfo(String loginEmail, String loginPassword,) async {
    // ignore: prefer_const_declarations
    final path = r'/rpc/login';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'login_email', loginEmail));
      queryParams.addAll(_queryParams('', 'login_password', loginPassword));



    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams
    );
  }

  /// Don't use this function with GET method, use POST method instead
  ///
  /// Parameters:
  ///
  /// * [String] loginEmail (required):
  ///
  /// * [String] loginPassword (required):
  Future<void> rpcLoginGet(String loginEmail, String loginPassword,) async {
    final response = await rpcLoginGetWithHttpInfo(loginEmail, loginPassword,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Don't use this function with GET method, use POST method instead
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RpcLoginPostRequest] args (required):
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> rpcLoginPostWithHttpInfo(RpcLoginPostRequest args, { String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/rpc/login';

    // ignore: prefer_final_locals
    Object? postBody = args;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (prefer != null) {
      headerParams[r'Prefer'] = parameterToString(prefer);
    }



    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams
    );
  }

  /// Don't use this function with GET method, use POST method instead
  ///
  /// Parameters:
  ///
  /// * [RpcLoginPostRequest] args (required):
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> rpcLoginPost(RpcLoginPostRequest args, { String? prefer, Map<String, String>? other}) async {
    final response = await rpcLoginPostWithHttpInfo(args,  prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
