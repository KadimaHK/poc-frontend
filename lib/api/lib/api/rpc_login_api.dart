//
// Added to .openapi-generator-ignore
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

  Future<Response> rpcLoginPostWithHttpInfo(String email, String password, { String? prefer, }) async {
    final path = r'/rpc/login';

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (prefer != null) {
      headerParams[r'Prefer'] = parameterToString(prefer);
    }
    headerParams[r'email'] = email;
    headerParams[r'password'] = password;


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      null,
      headerParams,
      formParams
    );
  }


  Future<String> rpcLoginPost(String email, String password) async {
    final response = await rpcLoginPostWithHttpInfo(email, password);
    String body = await _decodeBodyBytes(response);
    if (response.statusCode >= HttpStatus.badRequest) {
      return body;
    }

    JsonDecoder _decoder = JsonDecoder();
    return _decoder.convert(body)['session_token'];
  }
}
