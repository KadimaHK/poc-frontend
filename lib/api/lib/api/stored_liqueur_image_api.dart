//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StoredLiqueurImageApi {
  StoredLiqueurImageApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /stored_liqueur_image' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] storedLiqueurId:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> storedLiqueurImageDeleteWithHttpInfo({ String? storedLiqueurId, String? imageUrl, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/stored_liqueur_image';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (storedLiqueurId != null) {
      queryParams.addAll(_queryParams('', 'stored_liqueur_id', storedLiqueurId));
    }
    if (imageUrl != null) {
      queryParams.addAll(_queryParams('', 'image_url', imageUrl));
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
  /// * [String] storedLiqueurId:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> storedLiqueurImageDelete({ String? storedLiqueurId, String? imageUrl, String? prefer, }) async {
    final response = await storedLiqueurImageDeleteWithHttpInfo( storedLiqueurId: storedLiqueurId, imageUrl: imageUrl, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /stored_liqueur_image' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] storedLiqueurId:
  ///
  /// * [String] imageUrl:
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
  Future<Response> storedLiqueurImageGetWithHttpInfo({ String? storedLiqueurId, String? imageUrl, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/stored_liqueur_image';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (storedLiqueurId != null) {
      queryParams.addAll(_queryParams('', 'stored_liqueur_id', storedLiqueurId));
    }
    if (imageUrl != null) {
      queryParams.addAll(_queryParams('', 'image_url', imageUrl));
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
  /// * [String] storedLiqueurId:
  ///
  /// * [String] imageUrl:
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
  Future<List<StoredLiqueurImage>?> storedLiqueurImageGet({ String? storedLiqueurId, String? imageUrl, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    final response = await storedLiqueurImageGetWithHttpInfo( storedLiqueurId: storedLiqueurId, imageUrl: imageUrl, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StoredLiqueurImage>') as List)
        .cast<StoredLiqueurImage>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /stored_liqueur_image' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] storedLiqueurId:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [StoredLiqueurImage] storedLiqueurImage:
  ///   stored_liqueur_image
  Future<Response> storedLiqueurImagePatchWithHttpInfo({ String? storedLiqueurId, String? imageUrl, String? prefer, StoredLiqueurImage? storedLiqueurImage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/stored_liqueur_image';

    // ignore: prefer_final_locals
    Object? postBody = storedLiqueurImage;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (storedLiqueurId != null) {
      queryParams.addAll(_queryParams('', 'stored_liqueur_id', storedLiqueurId));
    }
    if (imageUrl != null) {
      queryParams.addAll(_queryParams('', 'image_url', imageUrl));
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
  /// * [String] storedLiqueurId:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [StoredLiqueurImage] storedLiqueurImage:
  ///   stored_liqueur_image
  Future<void> storedLiqueurImagePatch({ String? storedLiqueurId, String? imageUrl, String? prefer, StoredLiqueurImage? storedLiqueurImage, }) async {
    final response = await storedLiqueurImagePatchWithHttpInfo( storedLiqueurId: storedLiqueurId, imageUrl: imageUrl, prefer: prefer, storedLiqueurImage: storedLiqueurImage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /stored_liqueur_image' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [StoredLiqueurImage] storedLiqueurImage:
  ///   stored_liqueur_image
  Future<Response> storedLiqueurImagePostWithHttpInfo({ String? select, String? prefer, StoredLiqueurImage? storedLiqueurImage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/stored_liqueur_image';

    // ignore: prefer_final_locals
    Object? postBody = storedLiqueurImage;

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
  /// * [StoredLiqueurImage] storedLiqueurImage:
  ///   stored_liqueur_image
  Future<void> storedLiqueurImagePost({ String? select, String? prefer, StoredLiqueurImage? storedLiqueurImage, }) async {
    final response = await storedLiqueurImagePostWithHttpInfo( select: select, prefer: prefer, storedLiqueurImage: storedLiqueurImage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
