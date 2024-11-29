//
// Added to .openapi-generator-ignore
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RpcLogoutApi {
  RpcLogoutApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  Future<Response> rpcLogoutPostWithHttpInfo( { String? prefer, }) async {
    final path = r'/rpc/logout';


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
      null,
      headerParams,
      formParams,
      'application/json',
    );
  }


  Future<void> rpcLogoutPost( { String? prefer, }) async {
    final response = await rpcLogoutPostWithHttpInfo( prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
