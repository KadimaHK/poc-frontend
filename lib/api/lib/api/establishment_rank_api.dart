//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EstablishmentRankApi {
  EstablishmentRankApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /establishment_rank' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] userId:
  ///
  /// * [String] rank:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> establishmentRankDeleteWithHttpInfo({ String? establishmentId, String? userId, String? rank, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment_rank';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (rank != null) {
      queryParams.addAll(_queryParams('', 'rank', rank));
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
  /// * [String] establishmentId:
  ///
  /// * [String] userId:
  ///
  /// * [String] rank:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> establishmentRankDelete({ String? establishmentId, String? userId, String? rank, String? prefer, }) async {
    final response = await establishmentRankDeleteWithHttpInfo( establishmentId: establishmentId, userId: userId, rank: rank, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /establishment_rank' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] userId:
  ///
  /// * [String] rank:
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
  Future<Response> establishmentRankGetWithHttpInfo({ String? establishmentId, String? userId, String? rank, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment_rank';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (rank != null) {
      queryParams.addAll(_queryParams('', 'rank', rank));
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
  /// * [String] establishmentId:
  ///
  /// * [String] userId:
  ///
  /// * [String] rank:
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
  Future<List<EstablishmentRank>?> establishmentRankGet({ String? establishmentId, String? userId, String? rank, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    final response = await establishmentRankGetWithHttpInfo( establishmentId: establishmentId, userId: userId, rank: rank, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EstablishmentRank>') as List)
        .cast<EstablishmentRank>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /establishment_rank' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] userId:
  ///
  /// * [String] rank:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [EstablishmentRank] establishmentRank:
  ///   establishment_rank
  Future<Response> establishmentRankPatchWithHttpInfo({ String? establishmentId, String? userId, String? rank, String? prefer, EstablishmentRank? establishmentRank, }) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment_rank';

    // ignore: prefer_final_locals
    Object? postBody = establishmentRank;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (rank != null) {
      queryParams.addAll(_queryParams('', 'rank', rank));
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
  /// * [String] establishmentId:
  ///
  /// * [String] userId:
  ///
  /// * [String] rank:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [EstablishmentRank] establishmentRank:
  ///   establishment_rank
  Future<void> establishmentRankPatch({ String? establishmentId, String? userId, String? rank, String? prefer, EstablishmentRank? establishmentRank, }) async {
    final response = await establishmentRankPatchWithHttpInfo( establishmentId: establishmentId, userId: userId, rank: rank, prefer: prefer, establishmentRank: establishmentRank, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /establishment_rank' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [EstablishmentRank] establishmentRank:
  ///   establishment_rank
  Future<Response> establishmentRankPostWithHttpInfo({ String? select, String? prefer, EstablishmentRank? establishmentRank, }) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment_rank';

    // ignore: prefer_final_locals
    Object? postBody = establishmentRank;

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
  /// * [EstablishmentRank] establishmentRank:
  ///   establishment_rank
  Future<void> establishmentRankPost({ String? select, String? prefer, EstablishmentRank? establishmentRank, }) async {
    final response = await establishmentRankPostWithHttpInfo( select: select, prefer: prefer, establishmentRank: establishmentRank, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
