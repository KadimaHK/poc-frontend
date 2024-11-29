//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MessageApi {
  MessageApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /message' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] uuid:
  ///
  /// * [String] time:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  ///
  /// * [String] body:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> messageDeleteWithHttpInfo({ String? uuid, String? time, String? from, String? to, String? body, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/message';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (uuid != null) {
      queryParams.addAll(_queryParams('', 'uuid', uuid));
    }
    if (time != null) {
      queryParams.addAll(_queryParams('', 'time', time));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }
    if (body != null) {
      queryParams.addAll(_queryParams('', 'body', body));
    }

    if (prefer != null) {
      headerParams[r'Prefer'] = parameterToString(prefer);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] uuid:
  ///
  /// * [String] time:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  ///
  /// * [String] body:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> messageDelete({ String? uuid, String? time, String? from, String? to, String? body, String? prefer, }) async {
    final response = await messageDeleteWithHttpInfo( uuid: uuid, time: time, from: from, to: to, body: body, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /message' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] uuid:
  ///
  /// * [String] time:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  ///
  /// * [String] body:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] order:
  ///   Ordering
  ///
  /// * [String] range:
  ///   Limiting and Pagination
  ///
  /// * [String] rangeUnit:
  ///   Limiting and Pagination
  ///
  /// * [String] offset:
  ///   Limiting and Pagination
  ///
  /// * [String] limit:
  ///   Limiting and Pagination
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> messageGetWithHttpInfo({ String? uuid, String? time, String? from, String? to, String? body, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/message';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (uuid != null) {
      queryParams.addAll(_queryParams('', 'uuid', uuid));
    }
    if (time != null) {
      queryParams.addAll(_queryParams('', 'time', time));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }
    if (body != null) {
      queryParams.addAll(_queryParams('', 'body', body));
    }
    if (select != null) {
      queryParams.addAll(_queryParams('', 'select', select));
    }
    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    if (range != null) {
      headerParams[r'Range'] = parameterToString(range);
    }
    if (rangeUnit != null) {
      headerParams[r'Range-Unit'] = parameterToString(rangeUnit);
    }
    if (prefer != null) {
      headerParams[r'Prefer'] = parameterToString(prefer);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] uuid:
  ///
  /// * [String] time:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  ///
  /// * [String] body:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] order:
  ///   Ordering
  ///
  /// * [String] range:
  ///   Limiting and Pagination
  ///
  /// * [String] rangeUnit:
  ///   Limiting and Pagination
  ///
  /// * [String] offset:
  ///   Limiting and Pagination
  ///
  /// * [String] limit:
  ///   Limiting and Pagination
  ///
  /// * [String] prefer:
  ///   Preference
  Future<List<Message>?> messageGet({ String? uuid, String? time, String? from, String? to, String? body, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    final response = await messageGetWithHttpInfo( uuid: uuid, time: time, from: from, to: to, body: body, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Message>') as List)
        .cast<Message>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /message' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] uuid:
  ///
  /// * [String] time:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  ///
  /// * [String] body:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Message] message:
  ///   message
  Future<Response> messagePatchWithHttpInfo({ String? uuid, String? time, String? from, String? to, String? body, String? prefer, Message? message, }) async {
    // ignore: prefer_const_declarations
    final path = r'/message';

    // ignore: prefer_final_locals
    Object? postBody = message;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (uuid != null) {
      queryParams.addAll(_queryParams('', 'uuid', uuid));
    }
    if (time != null) {
      queryParams.addAll(_queryParams('', 'time', time));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }
    if (body != null) {
      queryParams.addAll(_queryParams('', 'body', body));
    }

    if (prefer != null) {
      headerParams[r'Prefer'] = parameterToString(prefer);
    }

    const contentTypes = <String>['application/vnd.pgrst.object+json;nulls=stripped', 'application/vnd.pgrst.object+json', 'application/json', 'text/csv'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] uuid:
  ///
  /// * [String] time:
  ///
  /// * [String] from:
  ///
  /// * [String] to:
  ///
  /// * [String] body:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Message] message:
  ///   message
  Future<void> messagePatch({ String? uuid, String? time, String? from, String? to, String? body, String? prefer, Message? message, }) async {
    final response = await messagePatchWithHttpInfo( uuid: uuid, time: time, from: from, to: to, body: body, prefer: prefer, message: message, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /message' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Message] message:
  ///   message
  Future<Response> messagePostWithHttpInfo({ String? select, String? prefer, Message? message, }) async {
    // ignore: prefer_const_declarations
    final path = r'/message';

    // ignore: prefer_final_locals
    Object? postBody = message;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (select != null) {
      queryParams.addAll(_queryParams('', 'select', select));
    }

    if (prefer != null) {
      headerParams[r'Prefer'] = parameterToString(prefer);
    }

    const contentTypes = <String>['application/vnd.pgrst.object+json;nulls=stripped', 'application/vnd.pgrst.object+json', 'application/json', 'text/csv'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Message] message:
  ///   message
  Future<void> messagePost({ String? select, String? prefer, Message? message, }) async {
    final response = await messagePostWithHttpInfo( select: select, prefer: prefer, message: message, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
