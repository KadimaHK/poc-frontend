//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OrderApi {
  OrderApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /order' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] userId:
  ///
  /// * [String] establishmentMenuId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> orderDeleteWithHttpInfo({ String? id, String? userId, String? establishmentMenuId, String? createdAt, String? updatedAt, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/order';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (establishmentMenuId != null) {
      queryParams.addAll(_queryParams('', 'establishment_menu_id', establishmentMenuId));
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
  /// * [String] userId:
  ///
  /// * [String] establishmentMenuId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> orderDelete({ String? id, String? userId, String? establishmentMenuId, String? createdAt, String? updatedAt, String? prefer, }) async {
    final response = await orderDeleteWithHttpInfo( id: id, userId: userId, establishmentMenuId: establishmentMenuId, createdAt: createdAt, updatedAt: updatedAt, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /order' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] userId:
  ///
  /// * [String] establishmentMenuId:
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
  Future<Response> orderGetWithHttpInfo({ String? id, String? userId, String? establishmentMenuId, String? createdAt, String? updatedAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/order';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (establishmentMenuId != null) {
      queryParams.addAll(_queryParams('', 'establishment_menu_id', establishmentMenuId));
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
  /// * [String] userId:
  ///
  /// * [String] establishmentMenuId:
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
  Future<List<Order>?> orderGet({ String? id, String? userId, String? establishmentMenuId, String? createdAt, String? updatedAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    final response = await orderGetWithHttpInfo( id: id, userId: userId, establishmentMenuId: establishmentMenuId, createdAt: createdAt, updatedAt: updatedAt, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Order>') as List)
        .cast<Order>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /order' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] userId:
  ///
  /// * [String] establishmentMenuId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Order] order:
  ///   order
  Future<Response> orderPatchWithHttpInfo({ String? id, String? userId, String? establishmentMenuId, String? createdAt, String? updatedAt, String? prefer, Order? order, }) async {
    // ignore: prefer_const_declarations
    final path = r'/order';

    // ignore: prefer_final_locals
    Object? postBody = order;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (establishmentMenuId != null) {
      queryParams.addAll(_queryParams('', 'establishment_menu_id', establishmentMenuId));
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
  /// * [String] userId:
  ///
  /// * [String] establishmentMenuId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Order] order:
  ///   order
  Future<void> orderPatch({ String? id, String? userId, String? establishmentMenuId, String? createdAt, String? updatedAt, String? prefer, Order? order, }) async {
    final response = await orderPatchWithHttpInfo( id: id, userId: userId, establishmentMenuId: establishmentMenuId, createdAt: createdAt, updatedAt: updatedAt, prefer: prefer, order: order, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /order' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Order] order:
  ///   order
  Future<Response> orderPostWithHttpInfo({ String? select, String? prefer, Order? order, }) async {
    // ignore: prefer_const_declarations
    final path = r'/order';

    // ignore: prefer_final_locals
    Object? postBody = order;

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
  /// * [Order] order:
  ///   order
  Future<void> orderPost({ String? select, String? prefer, Order? order, }) async {
    final response = await orderPostWithHttpInfo( select: select, prefer: prefer, order: order, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
