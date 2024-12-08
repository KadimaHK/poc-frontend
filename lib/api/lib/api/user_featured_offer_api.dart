//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserFeaturedOfferApi {
  UserFeaturedOfferApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /user_featured_offer' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userEmail:
  ///
  /// * [String] featuredOfferId:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> userFeaturedOfferDeleteWithHttpInfo({ String? userEmail, String? featuredOfferId, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user_featured_offer';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userEmail != null) {
      queryParams.addAll(_queryParams('', 'user_email', userEmail));
    }
    if (featuredOfferId != null) {
      queryParams.addAll(_queryParams('', 'featured_offer_id', featuredOfferId));
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
  /// * [String] userEmail:
  ///
  /// * [String] featuredOfferId:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> userFeaturedOfferDelete({ String? userEmail, String? featuredOfferId, String? prefer, }) async {
    final response = await userFeaturedOfferDeleteWithHttpInfo( userEmail: userEmail, featuredOfferId: featuredOfferId, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /user_featured_offer' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userEmail:
  ///
  /// * [String] featuredOfferId:
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
  Future<Response> userFeaturedOfferGetWithHttpInfo({ String? userEmail, String? featuredOfferId, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user_featured_offer';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userEmail != null) {
      queryParams.addAll(_queryParams('', 'user_email', userEmail));
    }
    if (featuredOfferId != null) {
      queryParams.addAll(_queryParams('', 'featured_offer_id', featuredOfferId));
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
  /// * [String] userEmail:
  ///
  /// * [String] featuredOfferId:
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
  Future<List<UserFeaturedOffer>?> userFeaturedOfferGet({ String? userEmail, String? featuredOfferId, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    final response = await userFeaturedOfferGetWithHttpInfo( userEmail: userEmail, featuredOfferId: featuredOfferId, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserFeaturedOffer>') as List)
        .cast<UserFeaturedOffer>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /user_featured_offer' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userEmail:
  ///
  /// * [String] featuredOfferId:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [UserFeaturedOffer] userFeaturedOffer:
  ///   user_featured_offer
  Future<Response> userFeaturedOfferPatchWithHttpInfo({ String? userEmail, String? featuredOfferId, String? prefer, UserFeaturedOffer? userFeaturedOffer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user_featured_offer';

    // ignore: prefer_final_locals
    Object? postBody = userFeaturedOffer;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userEmail != null) {
      queryParams.addAll(_queryParams('', 'user_email', userEmail));
    }
    if (featuredOfferId != null) {
      queryParams.addAll(_queryParams('', 'featured_offer_id', featuredOfferId));
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
  /// * [String] userEmail:
  ///
  /// * [String] featuredOfferId:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [UserFeaturedOffer] userFeaturedOffer:
  ///   user_featured_offer
  Future<void> userFeaturedOfferPatch({ String? userEmail, String? featuredOfferId, String? prefer, UserFeaturedOffer? userFeaturedOffer, }) async {
    final response = await userFeaturedOfferPatchWithHttpInfo( userEmail: userEmail, featuredOfferId: featuredOfferId, prefer: prefer, userFeaturedOffer: userFeaturedOffer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /user_featured_offer' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [UserFeaturedOffer] userFeaturedOffer:
  ///   user_featured_offer
  Future<Response> userFeaturedOfferPostWithHttpInfo({ String? select, String? prefer, UserFeaturedOffer? userFeaturedOffer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user_featured_offer';

    // ignore: prefer_final_locals
    Object? postBody = userFeaturedOffer;

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
  /// * [UserFeaturedOffer] userFeaturedOffer:
  ///   user_featured_offer
  Future<void> userFeaturedOfferPost({ String? select, String? prefer, UserFeaturedOffer? userFeaturedOffer, }) async {
    final response = await userFeaturedOfferPostWithHttpInfo( select: select, prefer: prefer, userFeaturedOffer: userFeaturedOffer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
