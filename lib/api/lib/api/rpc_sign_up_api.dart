//
// Added to .openapi-generator-ignore
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
  Future<Response> rpcSignUpPostWithHttpInfo(Object args, { String? prefer, }) async {
    final path = r'/rpc/sign_up';

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
      formParams,
      'application/json',
    );
  }

  Future<Object> rpcSignUpPost(Object args, { String? prefer, }) async {
    final response = await rpcSignUpPostWithHttpInfo(args, prefer: prefer);
    if (response.statusCode >= 400) {
      throw response;
    }
    return jsonDecode(response.body)['session_token'];
  }
}
