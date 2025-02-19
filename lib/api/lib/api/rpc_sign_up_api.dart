//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RpcSignUpApi {
  RpcSignUpApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Don't use this function with GET method, use POST method instead
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///
  /// * [String] name (required):
  ///
  /// * [String] password (required):
  Future<Response> rpcSignUpGetWithHttpInfo(String email, String name, String password,) async {
    // ignore: prefer_const_declarations
    final path = r'/rpc/sign_up';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'email', email));
      queryParams.addAll(_queryParams('', 'name', name));
      queryParams.addAll(_queryParams('', 'password', password));



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
  /// * [String] email (required):
  ///
  /// * [String] name (required):
  ///
  /// * [String] password (required):
  Future<void> rpcSignUpGet(String email, String name, String password,) async {
    final response = await rpcSignUpGetWithHttpInfo(email, name, password,);
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
  /// * [RpcSignUpPostRequest] args (required):
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> rpcSignUpPostWithHttpInfo(RpcSignUpPostRequest args, { String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/rpc/sign_up';

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
  /// * [RpcSignUpPostRequest] args (required):
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> rpcSignUpPost(RpcSignUpPostRequest args, { String? prefer, Map<String, String>? other}) async {
    final response = await rpcSignUpPostWithHttpInfo(args,  prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
