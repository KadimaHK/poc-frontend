//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StoredLiqueurTransferApi {
  StoredLiqueurTransferApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /stored_liqueur_transfer' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] storedLiqueurId:
  ///
  /// * [String] fromUserId:
  ///
  /// * [String] toUserId:
  ///
  /// * [String] isAccepted:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> storedLiqueurTransferDeleteWithHttpInfo({ String? id, String? storedLiqueurId, String? fromUserId, String? toUserId, String? isAccepted, String? createdAt, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/stored_liqueur_transfer';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (storedLiqueurId != null) {
      queryParams.addAll(_queryParams('', 'stored_liqueur_id', storedLiqueurId));
    }
    if (fromUserId != null) {
      queryParams.addAll(_queryParams('', 'from_user_id', fromUserId));
    }
    if (toUserId != null) {
      queryParams.addAll(_queryParams('', 'to_user_id', toUserId));
    }
    if (isAccepted != null) {
      queryParams.addAll(_queryParams('', 'is_accepted', isAccepted));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'created_at', createdAt));
    }
    if(other != null) {
      other.forEach((key, value) {
        queryParams.addAll(_queryParams('', key, value));
      });
    }

    if (prefer != null) {
      headerParams[r'Prefer'] = parameterToString(prefer);
    }



    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams
    );
  }

  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] storedLiqueurId:
  ///
  /// * [String] fromUserId:
  ///
  /// * [String] toUserId:
  ///
  /// * [String] isAccepted:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> storedLiqueurTransferDelete({ String? id, String? storedLiqueurId, String? fromUserId, String? toUserId, String? isAccepted, String? createdAt, String? prefer, Map<String, String>? other}) async {
    final response = await storedLiqueurTransferDeleteWithHttpInfo( id: id, storedLiqueurId: storedLiqueurId, fromUserId: fromUserId, toUserId: toUserId, isAccepted: isAccepted, createdAt: createdAt, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /stored_liqueur_transfer' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] storedLiqueurId:
  ///
  /// * [String] fromUserId:
  ///
  /// * [String] toUserId:
  ///
  /// * [String] isAccepted:
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
  Future<Response> storedLiqueurTransferGetWithHttpInfo({ String? id, String? storedLiqueurId, String? fromUserId, String? toUserId, String? isAccepted, String? createdAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/stored_liqueur_transfer';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (storedLiqueurId != null) {
      queryParams.addAll(_queryParams('', 'stored_liqueur_id', storedLiqueurId));
    }
    if (fromUserId != null) {
      queryParams.addAll(_queryParams('', 'from_user_id', fromUserId));
    }
    if (toUserId != null) {
      queryParams.addAll(_queryParams('', 'to_user_id', toUserId));
    }
    if (isAccepted != null) {
      queryParams.addAll(_queryParams('', 'is_accepted', isAccepted));
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
    if(other != null) {
      other.forEach((key, value) {
        queryParams.addAll(_queryParams('', key, value));
      });
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



    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams
    );
  }

  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] storedLiqueurId:
  ///
  /// * [String] fromUserId:
  ///
  /// * [String] toUserId:
  ///
  /// * [String] isAccepted:
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
  Future<List<StoredLiqueurTransfer>?> storedLiqueurTransferGet({ String? id, String? storedLiqueurId, String? fromUserId, String? toUserId, String? isAccepted, String? createdAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    final response = await storedLiqueurTransferGetWithHttpInfo( id: id, storedLiqueurId: storedLiqueurId, fromUserId: fromUserId, toUserId: toUserId, isAccepted: isAccepted, createdAt: createdAt, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StoredLiqueurTransfer>') as List)
        .cast<StoredLiqueurTransfer>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /stored_liqueur_transfer' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] storedLiqueurId:
  ///
  /// * [String] fromUserId:
  ///
  /// * [String] toUserId:
  ///
  /// * [String] isAccepted:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [StoredLiqueurTransfer] storedLiqueurTransfer:
  ///   stored_liqueur_transfer
  Future<Response> storedLiqueurTransferPatchWithHttpInfo({ String? id, String? storedLiqueurId, String? fromUserId, String? toUserId, String? isAccepted, String? createdAt, String? prefer, StoredLiqueurTransfer? storedLiqueurTransfer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/stored_liqueur_transfer';

    // ignore: prefer_final_locals
    Object? postBody = storedLiqueurTransfer;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (storedLiqueurId != null) {
      queryParams.addAll(_queryParams('', 'stored_liqueur_id', storedLiqueurId));
    }
    if (fromUserId != null) {
      queryParams.addAll(_queryParams('', 'from_user_id', fromUserId));
    }
    if (toUserId != null) {
      queryParams.addAll(_queryParams('', 'to_user_id', toUserId));
    }
    if (isAccepted != null) {
      queryParams.addAll(_queryParams('', 'is_accepted', isAccepted));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'created_at', createdAt));
    }
    if(other != null) {
      other.forEach((key, value) {
        queryParams.addAll(_queryParams('', key, value));
      });
    }

    if (prefer != null) {
      headerParams[r'Prefer'] = parameterToString(prefer);
    }



    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams
    );
  }

  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] storedLiqueurId:
  ///
  /// * [String] fromUserId:
  ///
  /// * [String] toUserId:
  ///
  /// * [String] isAccepted:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [StoredLiqueurTransfer] storedLiqueurTransfer:
  ///   stored_liqueur_transfer
  Future<void> storedLiqueurTransferPatch({ String? id, String? storedLiqueurId, String? fromUserId, String? toUserId, String? isAccepted, String? createdAt, String? prefer, StoredLiqueurTransfer? storedLiqueurTransfer, Map<String, String>? other}) async {
    final response = await storedLiqueurTransferPatchWithHttpInfo( id: id, storedLiqueurId: storedLiqueurId, fromUserId: fromUserId, toUserId: toUserId, isAccepted: isAccepted, createdAt: createdAt, prefer: prefer, storedLiqueurTransfer: storedLiqueurTransfer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /stored_liqueur_transfer' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [StoredLiqueurTransfer] storedLiqueurTransfer:
  ///   stored_liqueur_transfer
  Future<Response> storedLiqueurTransferPostWithHttpInfo({ String? select, String? prefer, StoredLiqueurTransfer? storedLiqueurTransfer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/stored_liqueur_transfer';

    // ignore: prefer_final_locals
    Object? postBody = storedLiqueurTransfer;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (select != null) {
      queryParams.addAll(_queryParams('', 'select', select));
    }
    if(other != null) {
      other.forEach((key, value) {
        queryParams.addAll(_queryParams('', key, value));
      });
    }

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

  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [StoredLiqueurTransfer] storedLiqueurTransfer:
  ///   stored_liqueur_transfer
  Future<void> storedLiqueurTransferPost({ String? select, String? prefer, StoredLiqueurTransfer? storedLiqueurTransfer, Map<String, String>? other}) async {
    final response = await storedLiqueurTransferPostWithHttpInfo( select: select, prefer: prefer, storedLiqueurTransfer: storedLiqueurTransfer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
