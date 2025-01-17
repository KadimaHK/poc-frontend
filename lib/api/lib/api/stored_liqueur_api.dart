//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StoredLiqueurApi {
  StoredLiqueurApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /stored_liqueur' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] storedDate:
  ///
  /// * [String] expiryDate:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] isRedeemed:
  ///
  /// * [String] userId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> storedLiqueurDeleteWithHttpInfo({ String? id, String? name, String? description, String? imageUrl, String? storedDate, String? expiryDate, String? establishmentId, String? isRedeemed, String? userId, String? createdAt, String? updatedAt, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/stored_liqueur';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (imageUrl != null) {
      queryParams.addAll(_queryParams('', 'image_url', imageUrl));
    }
    if (storedDate != null) {
      queryParams.addAll(_queryParams('', 'stored_date', storedDate));
    }
    if (expiryDate != null) {
      queryParams.addAll(_queryParams('', 'expiry_date', expiryDate));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (isRedeemed != null) {
      queryParams.addAll(_queryParams('', 'is_redeemed', isRedeemed));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'created_at', createdAt));
    }
    if (updatedAt != null) {
      queryParams.addAll(_queryParams('', 'updated_at', updatedAt));
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
  /// * [String] id:
  ///
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] storedDate:
  ///
  /// * [String] expiryDate:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] isRedeemed:
  ///
  /// * [String] userId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> storedLiqueurDelete({ String? id, String? name, String? description, String? imageUrl, String? storedDate, String? expiryDate, String? establishmentId, String? isRedeemed, String? userId, String? createdAt, String? updatedAt, String? prefer, }) async {
    final response = await storedLiqueurDeleteWithHttpInfo( id: id, name: name, description: description, imageUrl: imageUrl, storedDate: storedDate, expiryDate: expiryDate, establishmentId: establishmentId, isRedeemed: isRedeemed, userId: userId, createdAt: createdAt, updatedAt: updatedAt, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /stored_liqueur' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] storedDate:
  ///
  /// * [String] expiryDate:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] isRedeemed:
  ///
  /// * [String] userId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
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
  Future<Response> storedLiqueurGetWithHttpInfo({ String? id, String? name, String? description, String? imageUrl, String? storedDate, String? expiryDate, String? establishmentId, String? isRedeemed, String? userId, String? createdAt, String? updatedAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/stored_liqueur';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (imageUrl != null) {
      queryParams.addAll(_queryParams('', 'image_url', imageUrl));
    }
    if (storedDate != null) {
      queryParams.addAll(_queryParams('', 'stored_date', storedDate));
    }
    if (expiryDate != null) {
      queryParams.addAll(_queryParams('', 'expiry_date', expiryDate));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (isRedeemed != null) {
      queryParams.addAll(_queryParams('', 'is_redeemed', isRedeemed));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'created_at', createdAt));
    }
    if (updatedAt != null) {
      queryParams.addAll(_queryParams('', 'updated_at', updatedAt));
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
  /// * [String] id:
  ///
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] storedDate:
  ///
  /// * [String] expiryDate:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] isRedeemed:
  ///
  /// * [String] userId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
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
  Future<List<StoredLiqueur>?> storedLiqueurGet({ String? id, String? name, String? description, String? imageUrl, String? storedDate, String? expiryDate, String? establishmentId, String? isRedeemed, String? userId, String? createdAt, String? updatedAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    final response = await storedLiqueurGetWithHttpInfo( id: id, name: name, description: description, imageUrl: imageUrl, storedDate: storedDate, expiryDate: expiryDate, establishmentId: establishmentId, isRedeemed: isRedeemed, userId: userId, createdAt: createdAt, updatedAt: updatedAt, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StoredLiqueur>') as List)
        .cast<StoredLiqueur>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /stored_liqueur' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] storedDate:
  ///
  /// * [String] expiryDate:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] isRedeemed:
  ///
  /// * [String] userId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [StoredLiqueur] storedLiqueur:
  ///   stored_liqueur
  Future<Response> storedLiqueurPatchWithHttpInfo({ String? id, String? name, String? description, String? imageUrl, String? storedDate, String? expiryDate, String? establishmentId, String? isRedeemed, String? userId, String? createdAt, String? updatedAt, String? prefer, StoredLiqueur? storedLiqueur, }) async {
    // ignore: prefer_const_declarations
    final path = r'/stored_liqueur';

    // ignore: prefer_final_locals
    Object? postBody = storedLiqueur;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (imageUrl != null) {
      queryParams.addAll(_queryParams('', 'image_url', imageUrl));
    }
    if (storedDate != null) {
      queryParams.addAll(_queryParams('', 'stored_date', storedDate));
    }
    if (expiryDate != null) {
      queryParams.addAll(_queryParams('', 'expiry_date', expiryDate));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (isRedeemed != null) {
      queryParams.addAll(_queryParams('', 'is_redeemed', isRedeemed));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'created_at', createdAt));
    }
    if (updatedAt != null) {
      queryParams.addAll(_queryParams('', 'updated_at', updatedAt));
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
  /// * [String] id:
  ///
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] storedDate:
  ///
  /// * [String] expiryDate:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] isRedeemed:
  ///
  /// * [String] userId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [StoredLiqueur] storedLiqueur:
  ///   stored_liqueur
  Future<void> storedLiqueurPatch({ String? id, String? name, String? description, String? imageUrl, String? storedDate, String? expiryDate, String? establishmentId, String? isRedeemed, String? userId, String? createdAt, String? updatedAt, String? prefer, StoredLiqueur? storedLiqueur, }) async {
    final response = await storedLiqueurPatchWithHttpInfo( id: id, name: name, description: description, imageUrl: imageUrl, storedDate: storedDate, expiryDate: expiryDate, establishmentId: establishmentId, isRedeemed: isRedeemed, userId: userId, createdAt: createdAt, updatedAt: updatedAt, prefer: prefer, storedLiqueur: storedLiqueur, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /stored_liqueur' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [StoredLiqueur] storedLiqueur:
  ///   stored_liqueur
  Future<Response> storedLiqueurPostWithHttpInfo({ String? select, String? prefer, StoredLiqueur? storedLiqueur, }) async {
    // ignore: prefer_const_declarations
    final path = r'/stored_liqueur';

    // ignore: prefer_final_locals
    Object? postBody = storedLiqueur;

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
  /// * [StoredLiqueur] storedLiqueur:
  ///   stored_liqueur
  Future<void> storedLiqueurPost({ String? select, String? prefer, StoredLiqueur? storedLiqueur, }) async {
    final response = await storedLiqueurPostWithHttpInfo( select: select, prefer: prefer, storedLiqueur: storedLiqueur, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
