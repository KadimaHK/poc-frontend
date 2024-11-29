//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VwEstablishmentApi {
  VwEstablishmentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /vw_establishment' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] location:
  ///
  /// * [String] cordX:
  ///
  /// * [String] cordY:
  ///
  /// * [String] category:
  ///
  /// * [String] thumbnail:
  ///
  /// * [String] rank:
  ///
  /// * [String] bookingPoints:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] baseUrl:
  ///
  /// * [String] fileName:
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
  Future<Response> vwEstablishmentGetWithHttpInfo({ String? id, String? name, String? description, String? location, String? cordX, String? cordY, String? category, String? thumbnail, String? rank, String? bookingPoints, String? createdAt, String? updatedAt, String? baseUrl, String? fileName, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vw_establishment';

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
    if (location != null) {
      queryParams.addAll(_queryParams('', 'location', location));
    }
    if (cordX != null) {
      queryParams.addAll(_queryParams('', 'cord_x', cordX));
    }
    if (cordY != null) {
      queryParams.addAll(_queryParams('', 'cord_y', cordY));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (thumbnail != null) {
      queryParams.addAll(_queryParams('', 'thumbnail', thumbnail));
    }
    if (rank != null) {
      queryParams.addAll(_queryParams('', 'rank', rank));
    }
    if (bookingPoints != null) {
      queryParams.addAll(_queryParams('', 'booking_points', bookingPoints));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'created_at', createdAt));
    }
    if (updatedAt != null) {
      queryParams.addAll(_queryParams('', 'updated_at', updatedAt));
    }
    if (baseUrl != null) {
      queryParams.addAll(_queryParams('', 'base_url', baseUrl));
    }
    if (fileName != null) {
      queryParams.addAll(_queryParams('', 'file_name', fileName));
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
  /// * [String] location:
  ///
  /// * [String] cordX:
  ///
  /// * [String] cordY:
  ///
  /// * [String] category:
  ///
  /// * [String] thumbnail:
  ///
  /// * [String] rank:
  ///
  /// * [String] bookingPoints:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] baseUrl:
  ///
  /// * [String] fileName:
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
  Future<List<VwEstablishment>?> vwEstablishmentGet({ String? id, String? name, String? description, String? location, String? cordX, String? cordY, String? category, String? thumbnail, String? rank, String? bookingPoints, String? createdAt, String? updatedAt, String? baseUrl, String? fileName, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    final response = await vwEstablishmentGetWithHttpInfo( id: id, name: name, description: description, location: location, cordX: cordX, cordY: cordY, category: category, thumbnail: thumbnail, rank: rank, bookingPoints: bookingPoints, createdAt: createdAt, updatedAt: updatedAt, baseUrl: baseUrl, fileName: fileName, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<VwEstablishment>') as List)
        .cast<VwEstablishment>()
        .toList(growable: false);

    }
    return null;
  }
}
