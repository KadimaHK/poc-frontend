//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PickEstablishmentApi {
  PickEstablishmentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /pick_establishment' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] pickId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> pickEstablishmentDeleteWithHttpInfo({ String? pickId, String? establishmentId, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/pick_establishment';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pickId != null) {
      queryParams.addAll(_queryParams('', 'pick_id', pickId));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
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
  /// * [String] pickId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> pickEstablishmentDelete({ String? pickId, String? establishmentId, String? prefer, Map<String, String>? other}) async {
    final response = await pickEstablishmentDeleteWithHttpInfo( pickId: pickId, establishmentId: establishmentId, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /pick_establishment' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] pickId:
  ///
  /// * [String] establishmentId:
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
  Future<Response> pickEstablishmentGetWithHttpInfo({ String? pickId, String? establishmentId, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/pick_establishment';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pickId != null) {
      queryParams.addAll(_queryParams('', 'pick_id', pickId));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
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
  /// * [String] pickId:
  ///
  /// * [String] establishmentId:
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
  Future<List<PickEstablishment>?> pickEstablishmentGet({ String? pickId, String? establishmentId, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    final response = await pickEstablishmentGetWithHttpInfo( pickId: pickId, establishmentId: establishmentId, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PickEstablishment>') as List)
        .cast<PickEstablishment>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /pick_establishment' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] pickId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [PickEstablishment] pickEstablishment:
  ///   pick_establishment
  Future<Response> pickEstablishmentPatchWithHttpInfo({ String? pickId, String? establishmentId, String? prefer, PickEstablishment? pickEstablishment, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/pick_establishment';

    // ignore: prefer_final_locals
    Object? postBody = pickEstablishment;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pickId != null) {
      queryParams.addAll(_queryParams('', 'pick_id', pickId));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
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
  /// * [String] pickId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [PickEstablishment] pickEstablishment:
  ///   pick_establishment
  Future<void> pickEstablishmentPatch({ String? pickId, String? establishmentId, String? prefer, PickEstablishment? pickEstablishment, Map<String, String>? other}) async {
    final response = await pickEstablishmentPatchWithHttpInfo( pickId: pickId, establishmentId: establishmentId, prefer: prefer, pickEstablishment: pickEstablishment, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /pick_establishment' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [PickEstablishment] pickEstablishment:
  ///   pick_establishment
  Future<Response> pickEstablishmentPostWithHttpInfo({ String? select, String? prefer, PickEstablishment? pickEstablishment, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/pick_establishment';

    // ignore: prefer_final_locals
    Object? postBody = pickEstablishment;

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
  /// * [PickEstablishment] pickEstablishment:
  ///   pick_establishment
  Future<void> pickEstablishmentPost({ String? select, String? prefer, PickEstablishment? pickEstablishment, Map<String, String>? other}) async {
    final response = await pickEstablishmentPostWithHttpInfo( select: select, prefer: prefer, pickEstablishment: pickEstablishment, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
