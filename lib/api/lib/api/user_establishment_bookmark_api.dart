//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserEstablishmentBookmarkApi {
  UserEstablishmentBookmarkApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /user_establishment_bookmark' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> userEstablishmentBookmarkDeleteWithHttpInfo({ String? userId, String? establishmentId, String? createdAt, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user_establishment_bookmark';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'created_at', createdAt));
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
  /// * [String] userId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> userEstablishmentBookmarkDelete({ String? userId, String? establishmentId, String? createdAt, String? prefer, }) async {
    final response = await userEstablishmentBookmarkDeleteWithHttpInfo( userId: userId, establishmentId: establishmentId, createdAt: createdAt, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /user_establishment_bookmark' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] createdAt:
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
  Future<Response> userEstablishmentBookmarkGetWithHttpInfo({ String? userId, String? establishmentId, String? createdAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user_establishment_bookmark';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'created_at', createdAt));
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
  /// * [String] userId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] createdAt:
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
  Future<List<UserEstablishmentBookmark>?> userEstablishmentBookmarkGet({ String? userId, String? establishmentId, String? createdAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    final response = await userEstablishmentBookmarkGetWithHttpInfo( userId: userId, establishmentId: establishmentId, createdAt: createdAt, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserEstablishmentBookmark>') as List)
        .cast<UserEstablishmentBookmark>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /user_establishment_bookmark' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [UserEstablishmentBookmark] userEstablishmentBookmark:
  ///   user_establishment_bookmark
  Future<Response> userEstablishmentBookmarkPatchWithHttpInfo({ String? userId, String? establishmentId, String? createdAt, String? prefer, UserEstablishmentBookmark? userEstablishmentBookmark, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user_establishment_bookmark';

    // ignore: prefer_final_locals
    Object? postBody = userEstablishmentBookmark;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'created_at', createdAt));
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
  /// * [String] userId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [UserEstablishmentBookmark] userEstablishmentBookmark:
  ///   user_establishment_bookmark
  Future<void> userEstablishmentBookmarkPatch({ String? userId, String? establishmentId, String? createdAt, String? prefer, UserEstablishmentBookmark? userEstablishmentBookmark, }) async {
    final response = await userEstablishmentBookmarkPatchWithHttpInfo( userId: userId, establishmentId: establishmentId, createdAt: createdAt, prefer: prefer, userEstablishmentBookmark: userEstablishmentBookmark, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /user_establishment_bookmark' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [UserEstablishmentBookmark] userEstablishmentBookmark:
  ///   user_establishment_bookmark
  Future<Response> userEstablishmentBookmarkPostWithHttpInfo({ String? select, String? prefer, UserEstablishmentBookmark? userEstablishmentBookmark, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user_establishment_bookmark';

    // ignore: prefer_final_locals
    Object? postBody = userEstablishmentBookmark;

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
  /// * [UserEstablishmentBookmark] userEstablishmentBookmark:
  ///   user_establishment_bookmark
  Future<void> userEstablishmentBookmarkPost({ String? select, String? prefer, UserEstablishmentBookmark? userEstablishmentBookmark, }) async {
    final response = await userEstablishmentBookmarkPostWithHttpInfo( select: select, prefer: prefer, userEstablishmentBookmark: userEstablishmentBookmark, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
