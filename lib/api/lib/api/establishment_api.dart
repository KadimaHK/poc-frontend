//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EstablishmentApi {
  EstablishmentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /establishment' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] notice:
  ///
  /// * [String] address:
  ///
  /// * [String] cordX:
  ///
  /// * [String] cordY:
  ///
  /// * [String] phone:
  ///
  /// * [String] email:
  ///
  /// * [String] website:
  ///
  /// * [String] category:
  ///
  /// * [String] thumbnailUrl:
  ///
  /// * [String] rank:
  ///   Average rating of the establishment
  ///
  /// * [String] bookingPoints:
  ///   How many points are a user earning by booking this establishment
  ///
  /// * [String] bookmarkCount:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> establishmentDeleteWithHttpInfo({ String? id, String? name, String? description, String? notice, String? address, String? cordX, String? cordY, String? phone, String? email, String? website, String? category, String? thumbnailUrl, String? rank, String? bookingPoints, String? bookmarkCount, String? createdAt, String? updatedAt, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment';

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
    if (notice != null) {
      queryParams.addAll(_queryParams('', 'notice', notice));
    }
    if (address != null) {
      queryParams.addAll(_queryParams('', 'address', address));
    }
    if (cordX != null) {
      queryParams.addAll(_queryParams('', 'cord_x', cordX));
    }
    if (cordY != null) {
      queryParams.addAll(_queryParams('', 'cord_y', cordY));
    }
    if (phone != null) {
      queryParams.addAll(_queryParams('', 'phone', phone));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (website != null) {
      queryParams.addAll(_queryParams('', 'website', website));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (thumbnailUrl != null) {
      queryParams.addAll(_queryParams('', 'thumbnail_url', thumbnailUrl));
    }
    if (rank != null) {
      queryParams.addAll(_queryParams('', 'rank', rank));
    }
    if (bookingPoints != null) {
      queryParams.addAll(_queryParams('', 'booking_points', bookingPoints));
    }
    if (bookmarkCount != null) {
      queryParams.addAll(_queryParams('', 'bookmark_count', bookmarkCount));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'created_at', createdAt));
    }
    if (updatedAt != null) {
      queryParams.addAll(_queryParams('', 'updated_at', updatedAt));
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
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] notice:
  ///
  /// * [String] address:
  ///
  /// * [String] cordX:
  ///
  /// * [String] cordY:
  ///
  /// * [String] phone:
  ///
  /// * [String] email:
  ///
  /// * [String] website:
  ///
  /// * [String] category:
  ///
  /// * [String] thumbnailUrl:
  ///
  /// * [String] rank:
  ///   Average rating of the establishment
  ///
  /// * [String] bookingPoints:
  ///   How many points are a user earning by booking this establishment
  ///
  /// * [String] bookmarkCount:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> establishmentDelete({ String? id, String? name, String? description, String? notice, String? address, String? cordX, String? cordY, String? phone, String? email, String? website, String? category, String? thumbnailUrl, String? rank, String? bookingPoints, String? bookmarkCount, String? createdAt, String? updatedAt, String? prefer, Map<String, String>? other}) async {
    final response = await establishmentDeleteWithHttpInfo( id: id, name: name, description: description, notice: notice, address: address, cordX: cordX, cordY: cordY, phone: phone, email: email, website: website, category: category, thumbnailUrl: thumbnailUrl, rank: rank, bookingPoints: bookingPoints, bookmarkCount: bookmarkCount, createdAt: createdAt, updatedAt: updatedAt, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /establishment' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] notice:
  ///
  /// * [String] address:
  ///
  /// * [String] cordX:
  ///
  /// * [String] cordY:
  ///
  /// * [String] phone:
  ///
  /// * [String] email:
  ///
  /// * [String] website:
  ///
  /// * [String] category:
  ///
  /// * [String] thumbnailUrl:
  ///
  /// * [String] rank:
  ///   Average rating of the establishment
  ///
  /// * [String] bookingPoints:
  ///   How many points are a user earning by booking this establishment
  ///
  /// * [String] bookmarkCount:
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
  Future<Response> establishmentGetWithHttpInfo({ String? id, String? name, String? description, String? notice, String? address, String? cordX, String? cordY, String? phone, String? email, String? website, String? category, String? thumbnailUrl, String? rank, String? bookingPoints, String? bookmarkCount, String? createdAt, String? updatedAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment';

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
    if (notice != null) {
      queryParams.addAll(_queryParams('', 'notice', notice));
    }
    if (address != null) {
      queryParams.addAll(_queryParams('', 'address', address));
    }
    if (cordX != null) {
      queryParams.addAll(_queryParams('', 'cord_x', cordX));
    }
    if (cordY != null) {
      queryParams.addAll(_queryParams('', 'cord_y', cordY));
    }
    if (phone != null) {
      queryParams.addAll(_queryParams('', 'phone', phone));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (website != null) {
      queryParams.addAll(_queryParams('', 'website', website));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (thumbnailUrl != null) {
      queryParams.addAll(_queryParams('', 'thumbnail_url', thumbnailUrl));
    }
    if (rank != null) {
      queryParams.addAll(_queryParams('', 'rank', rank));
    }
    if (bookingPoints != null) {
      queryParams.addAll(_queryParams('', 'booking_points', bookingPoints));
    }
    if (bookmarkCount != null) {
      queryParams.addAll(_queryParams('', 'bookmark_count', bookmarkCount));
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
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] notice:
  ///
  /// * [String] address:
  ///
  /// * [String] cordX:
  ///
  /// * [String] cordY:
  ///
  /// * [String] phone:
  ///
  /// * [String] email:
  ///
  /// * [String] website:
  ///
  /// * [String] category:
  ///
  /// * [String] thumbnailUrl:
  ///
  /// * [String] rank:
  ///   Average rating of the establishment
  ///
  /// * [String] bookingPoints:
  ///   How many points are a user earning by booking this establishment
  ///
  /// * [String] bookmarkCount:
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
  Future<List<Establishment>?> establishmentGet({ String? id, String? name, String? description, String? notice, String? address, String? cordX, String? cordY, String? phone, String? email, String? website, String? category, String? thumbnailUrl, String? rank, String? bookingPoints, String? bookmarkCount, String? createdAt, String? updatedAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    final response = await establishmentGetWithHttpInfo( id: id, name: name, description: description, notice: notice, address: address, cordX: cordX, cordY: cordY, phone: phone, email: email, website: website, category: category, thumbnailUrl: thumbnailUrl, rank: rank, bookingPoints: bookingPoints, bookmarkCount: bookmarkCount, createdAt: createdAt, updatedAt: updatedAt, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Establishment>') as List)
        .cast<Establishment>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /establishment' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] notice:
  ///
  /// * [String] address:
  ///
  /// * [String] cordX:
  ///
  /// * [String] cordY:
  ///
  /// * [String] phone:
  ///
  /// * [String] email:
  ///
  /// * [String] website:
  ///
  /// * [String] category:
  ///
  /// * [String] thumbnailUrl:
  ///
  /// * [String] rank:
  ///   Average rating of the establishment
  ///
  /// * [String] bookingPoints:
  ///   How many points are a user earning by booking this establishment
  ///
  /// * [String] bookmarkCount:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Establishment] establishment:
  ///   establishment
  Future<Response> establishmentPatchWithHttpInfo({ String? id, String? name, String? description, String? notice, String? address, String? cordX, String? cordY, String? phone, String? email, String? website, String? category, String? thumbnailUrl, String? rank, String? bookingPoints, String? bookmarkCount, String? createdAt, String? updatedAt, String? prefer, Establishment? establishment, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment';

    // ignore: prefer_final_locals
    Object? postBody = establishment;

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
    if (notice != null) {
      queryParams.addAll(_queryParams('', 'notice', notice));
    }
    if (address != null) {
      queryParams.addAll(_queryParams('', 'address', address));
    }
    if (cordX != null) {
      queryParams.addAll(_queryParams('', 'cord_x', cordX));
    }
    if (cordY != null) {
      queryParams.addAll(_queryParams('', 'cord_y', cordY));
    }
    if (phone != null) {
      queryParams.addAll(_queryParams('', 'phone', phone));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (website != null) {
      queryParams.addAll(_queryParams('', 'website', website));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (thumbnailUrl != null) {
      queryParams.addAll(_queryParams('', 'thumbnail_url', thumbnailUrl));
    }
    if (rank != null) {
      queryParams.addAll(_queryParams('', 'rank', rank));
    }
    if (bookingPoints != null) {
      queryParams.addAll(_queryParams('', 'booking_points', bookingPoints));
    }
    if (bookmarkCount != null) {
      queryParams.addAll(_queryParams('', 'bookmark_count', bookmarkCount));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'created_at', createdAt));
    }
    if (updatedAt != null) {
      queryParams.addAll(_queryParams('', 'updated_at', updatedAt));
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
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] notice:
  ///
  /// * [String] address:
  ///
  /// * [String] cordX:
  ///
  /// * [String] cordY:
  ///
  /// * [String] phone:
  ///
  /// * [String] email:
  ///
  /// * [String] website:
  ///
  /// * [String] category:
  ///
  /// * [String] thumbnailUrl:
  ///
  /// * [String] rank:
  ///   Average rating of the establishment
  ///
  /// * [String] bookingPoints:
  ///   How many points are a user earning by booking this establishment
  ///
  /// * [String] bookmarkCount:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Establishment] establishment:
  ///   establishment
  Future<void> establishmentPatch({ String? id, String? name, String? description, String? notice, String? address, String? cordX, String? cordY, String? phone, String? email, String? website, String? category, String? thumbnailUrl, String? rank, String? bookingPoints, String? bookmarkCount, String? createdAt, String? updatedAt, String? prefer, Establishment? establishment, Map<String, String>? other}) async {
    final response = await establishmentPatchWithHttpInfo( id: id, name: name, description: description, notice: notice, address: address, cordX: cordX, cordY: cordY, phone: phone, email: email, website: website, category: category, thumbnailUrl: thumbnailUrl, rank: rank, bookingPoints: bookingPoints, bookmarkCount: bookmarkCount, createdAt: createdAt, updatedAt: updatedAt, prefer: prefer, establishment: establishment, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /establishment' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Establishment] establishment:
  ///   establishment
  Future<Response> establishmentPostWithHttpInfo({ String? select, String? prefer, Establishment? establishment, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment';

    // ignore: prefer_final_locals
    Object? postBody = establishment;

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
  /// * [Establishment] establishment:
  ///   establishment
  Future<void> establishmentPost({ String? select, String? prefer, Establishment? establishment, Map<String, String>? other}) async {
    final response = await establishmentPostWithHttpInfo( select: select, prefer: prefer, establishment: establishment, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
