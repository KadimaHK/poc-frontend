//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EstablishmentOpeningHoursApi {
  EstablishmentOpeningHoursApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /establishment_opening_hours' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] day:
  ///
  /// * [String] openTime:
  ///
  /// * [String] closeTime:
  ///
  /// * [String] isOvernight:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> establishmentOpeningHoursDeleteWithHttpInfo({ String? establishmentId, String? day, String? openTime, String? closeTime, String? isOvernight, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment_opening_hours';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (day != null) {
      queryParams.addAll(_queryParams('', 'day', day));
    }
    if (openTime != null) {
      queryParams.addAll(_queryParams('', 'open_time', openTime));
    }
    if (closeTime != null) {
      queryParams.addAll(_queryParams('', 'close_time', closeTime));
    }
    if (isOvernight != null) {
      queryParams.addAll(_queryParams('', 'is_overnight', isOvernight));
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
  /// * [String] establishmentId:
  ///
  /// * [String] day:
  ///
  /// * [String] openTime:
  ///
  /// * [String] closeTime:
  ///
  /// * [String] isOvernight:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> establishmentOpeningHoursDelete({ String? establishmentId, String? day, String? openTime, String? closeTime, String? isOvernight, String? prefer, Map<String, String>? other}) async {
    final response = await establishmentOpeningHoursDeleteWithHttpInfo( establishmentId: establishmentId, day: day, openTime: openTime, closeTime: closeTime, isOvernight: isOvernight, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /establishment_opening_hours' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] day:
  ///
  /// * [String] openTime:
  ///
  /// * [String] closeTime:
  ///
  /// * [String] isOvernight:
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
  Future<Response> establishmentOpeningHoursGetWithHttpInfo({ String? establishmentId, String? day, String? openTime, String? closeTime, String? isOvernight, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment_opening_hours';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (day != null) {
      queryParams.addAll(_queryParams('', 'day', day));
    }
    if (openTime != null) {
      queryParams.addAll(_queryParams('', 'open_time', openTime));
    }
    if (closeTime != null) {
      queryParams.addAll(_queryParams('', 'close_time', closeTime));
    }
    if (isOvernight != null) {
      queryParams.addAll(_queryParams('', 'is_overnight', isOvernight));
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
  /// * [String] establishmentId:
  ///
  /// * [String] day:
  ///
  /// * [String] openTime:
  ///
  /// * [String] closeTime:
  ///
  /// * [String] isOvernight:
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
  Future<List<EstablishmentOpeningHours>?> establishmentOpeningHoursGet({ String? establishmentId, String? day, String? openTime, String? closeTime, String? isOvernight, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    final response = await establishmentOpeningHoursGetWithHttpInfo( establishmentId: establishmentId, day: day, openTime: openTime, closeTime: closeTime, isOvernight: isOvernight, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EstablishmentOpeningHours>') as List)
        .cast<EstablishmentOpeningHours>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /establishment_opening_hours' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] day:
  ///
  /// * [String] openTime:
  ///
  /// * [String] closeTime:
  ///
  /// * [String] isOvernight:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [EstablishmentOpeningHours] establishmentOpeningHours:
  ///   establishment_opening_hours
  Future<Response> establishmentOpeningHoursPatchWithHttpInfo({ String? establishmentId, String? day, String? openTime, String? closeTime, String? isOvernight, String? prefer, EstablishmentOpeningHours? establishmentOpeningHours, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment_opening_hours';

    // ignore: prefer_final_locals
    Object? postBody = establishmentOpeningHours;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (day != null) {
      queryParams.addAll(_queryParams('', 'day', day));
    }
    if (openTime != null) {
      queryParams.addAll(_queryParams('', 'open_time', openTime));
    }
    if (closeTime != null) {
      queryParams.addAll(_queryParams('', 'close_time', closeTime));
    }
    if (isOvernight != null) {
      queryParams.addAll(_queryParams('', 'is_overnight', isOvernight));
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
  /// * [String] establishmentId:
  ///
  /// * [String] day:
  ///
  /// * [String] openTime:
  ///
  /// * [String] closeTime:
  ///
  /// * [String] isOvernight:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [EstablishmentOpeningHours] establishmentOpeningHours:
  ///   establishment_opening_hours
  Future<void> establishmentOpeningHoursPatch({ String? establishmentId, String? day, String? openTime, String? closeTime, String? isOvernight, String? prefer, EstablishmentOpeningHours? establishmentOpeningHours, Map<String, String>? other}) async {
    final response = await establishmentOpeningHoursPatchWithHttpInfo( establishmentId: establishmentId, day: day, openTime: openTime, closeTime: closeTime, isOvernight: isOvernight, prefer: prefer, establishmentOpeningHours: establishmentOpeningHours, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /establishment_opening_hours' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [EstablishmentOpeningHours] establishmentOpeningHours:
  ///   establishment_opening_hours
  Future<Response> establishmentOpeningHoursPostWithHttpInfo({ String? select, String? prefer, EstablishmentOpeningHours? establishmentOpeningHours, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment_opening_hours';

    // ignore: prefer_final_locals
    Object? postBody = establishmentOpeningHours;

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
  /// * [EstablishmentOpeningHours] establishmentOpeningHours:
  ///   establishment_opening_hours
  Future<void> establishmentOpeningHoursPost({ String? select, String? prefer, EstablishmentOpeningHours? establishmentOpeningHours, Map<String, String>? other}) async {
    final response = await establishmentOpeningHoursPostWithHttpInfo( select: select, prefer: prefer, establishmentOpeningHours: establishmentOpeningHours, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
