//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FeaturedOfferApi {
  FeaturedOfferApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /featured_offer' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] title:
  ///
  /// * [String] voucherCode:
  ///
  /// * [String] expiry:
  ///
  /// * [String] details:
  ///
  /// * [String] description:
  ///
  /// * [String] redemptionPeriod:
  ///
  /// * [String] howToRedeem:
  ///
  /// * [String] isGlobal:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> featuredOfferDeleteWithHttpInfo({ String? id, String? title, String? voucherCode, String? expiry, String? details, String? description, String? redemptionPeriod, String? howToRedeem, String? isGlobal, String? imageUrl, String? establishmentId, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/featured_offer';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (voucherCode != null) {
      queryParams.addAll(_queryParams('', 'voucher_code', voucherCode));
    }
    if (expiry != null) {
      queryParams.addAll(_queryParams('', 'expiry', expiry));
    }
    if (details != null) {
      queryParams.addAll(_queryParams('', 'details', details));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (redemptionPeriod != null) {
      queryParams.addAll(_queryParams('', 'redemption_period', redemptionPeriod));
    }
    if (howToRedeem != null) {
      queryParams.addAll(_queryParams('', 'how_to_redeem', howToRedeem));
    }
    if (isGlobal != null) {
      queryParams.addAll(_queryParams('', 'is_global', isGlobal));
    }
    if (imageUrl != null) {
      queryParams.addAll(_queryParams('', 'image_url', imageUrl));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
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
  /// * [String] title:
  ///
  /// * [String] voucherCode:
  ///
  /// * [String] expiry:
  ///
  /// * [String] details:
  ///
  /// * [String] description:
  ///
  /// * [String] redemptionPeriod:
  ///
  /// * [String] howToRedeem:
  ///
  /// * [String] isGlobal:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> featuredOfferDelete({ String? id, String? title, String? voucherCode, String? expiry, String? details, String? description, String? redemptionPeriod, String? howToRedeem, String? isGlobal, String? imageUrl, String? establishmentId, String? prefer, }) async {
    final response = await featuredOfferDeleteWithHttpInfo( id: id, title: title, voucherCode: voucherCode, expiry: expiry, details: details, description: description, redemptionPeriod: redemptionPeriod, howToRedeem: howToRedeem, isGlobal: isGlobal, imageUrl: imageUrl, establishmentId: establishmentId, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /featured_offer' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] title:
  ///
  /// * [String] voucherCode:
  ///
  /// * [String] expiry:
  ///
  /// * [String] details:
  ///
  /// * [String] description:
  ///
  /// * [String] redemptionPeriod:
  ///
  /// * [String] howToRedeem:
  ///
  /// * [String] isGlobal:
  ///
  /// * [String] imageUrl:
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
  Future<Response> featuredOfferGetWithHttpInfo({ String? id, String? title, String? voucherCode, String? expiry, String? details, String? description, String? redemptionPeriod, String? howToRedeem, String? isGlobal, String? imageUrl, String? establishmentId, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/featured_offer';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (voucherCode != null) {
      queryParams.addAll(_queryParams('', 'voucher_code', voucherCode));
    }
    if (expiry != null) {
      queryParams.addAll(_queryParams('', 'expiry', expiry));
    }
    if (details != null) {
      queryParams.addAll(_queryParams('', 'details', details));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (redemptionPeriod != null) {
      queryParams.addAll(_queryParams('', 'redemption_period', redemptionPeriod));
    }
    if (howToRedeem != null) {
      queryParams.addAll(_queryParams('', 'how_to_redeem', howToRedeem));
    }
    if (isGlobal != null) {
      queryParams.addAll(_queryParams('', 'is_global', isGlobal));
    }
    if (imageUrl != null) {
      queryParams.addAll(_queryParams('', 'image_url', imageUrl));
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
  /// * [String] title:
  ///
  /// * [String] voucherCode:
  ///
  /// * [String] expiry:
  ///
  /// * [String] details:
  ///
  /// * [String] description:
  ///
  /// * [String] redemptionPeriod:
  ///
  /// * [String] howToRedeem:
  ///
  /// * [String] isGlobal:
  ///
  /// * [String] imageUrl:
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
  Future<List<FeaturedOffer>?> featuredOfferGet({ String? id, String? title, String? voucherCode, String? expiry, String? details, String? description, String? redemptionPeriod, String? howToRedeem, String? isGlobal, String? imageUrl, String? establishmentId, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    final response = await featuredOfferGetWithHttpInfo( id: id, title: title, voucherCode: voucherCode, expiry: expiry, details: details, description: description, redemptionPeriod: redemptionPeriod, howToRedeem: howToRedeem, isGlobal: isGlobal, imageUrl: imageUrl, establishmentId: establishmentId, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FeaturedOffer>') as List)
        .cast<FeaturedOffer>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /featured_offer' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] title:
  ///
  /// * [String] voucherCode:
  ///
  /// * [String] expiry:
  ///
  /// * [String] details:
  ///
  /// * [String] description:
  ///
  /// * [String] redemptionPeriod:
  ///
  /// * [String] howToRedeem:
  ///
  /// * [String] isGlobal:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [FeaturedOffer] featuredOffer:
  ///   featured_offer
  Future<Response> featuredOfferPatchWithHttpInfo({ String? id, String? title, String? voucherCode, String? expiry, String? details, String? description, String? redemptionPeriod, String? howToRedeem, String? isGlobal, String? imageUrl, String? establishmentId, String? prefer, FeaturedOffer? featuredOffer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/featured_offer';

    // ignore: prefer_final_locals
    Object? postBody = featuredOffer;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (voucherCode != null) {
      queryParams.addAll(_queryParams('', 'voucher_code', voucherCode));
    }
    if (expiry != null) {
      queryParams.addAll(_queryParams('', 'expiry', expiry));
    }
    if (details != null) {
      queryParams.addAll(_queryParams('', 'details', details));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (redemptionPeriod != null) {
      queryParams.addAll(_queryParams('', 'redemption_period', redemptionPeriod));
    }
    if (howToRedeem != null) {
      queryParams.addAll(_queryParams('', 'how_to_redeem', howToRedeem));
    }
    if (isGlobal != null) {
      queryParams.addAll(_queryParams('', 'is_global', isGlobal));
    }
    if (imageUrl != null) {
      queryParams.addAll(_queryParams('', 'image_url', imageUrl));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
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
  /// * [String] title:
  ///
  /// * [String] voucherCode:
  ///
  /// * [String] expiry:
  ///
  /// * [String] details:
  ///
  /// * [String] description:
  ///
  /// * [String] redemptionPeriod:
  ///
  /// * [String] howToRedeem:
  ///
  /// * [String] isGlobal:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [FeaturedOffer] featuredOffer:
  ///   featured_offer
  Future<void> featuredOfferPatch({ String? id, String? title, String? voucherCode, String? expiry, String? details, String? description, String? redemptionPeriod, String? howToRedeem, String? isGlobal, String? imageUrl, String? establishmentId, String? prefer, FeaturedOffer? featuredOffer, }) async {
    final response = await featuredOfferPatchWithHttpInfo( id: id, title: title, voucherCode: voucherCode, expiry: expiry, details: details, description: description, redemptionPeriod: redemptionPeriod, howToRedeem: howToRedeem, isGlobal: isGlobal, imageUrl: imageUrl, establishmentId: establishmentId, prefer: prefer, featuredOffer: featuredOffer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /featured_offer' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [FeaturedOffer] featuredOffer:
  ///   featured_offer
  Future<Response> featuredOfferPostWithHttpInfo({ String? select, String? prefer, FeaturedOffer? featuredOffer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/featured_offer';

    // ignore: prefer_final_locals
    Object? postBody = featuredOffer;

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
  /// * [FeaturedOffer] featuredOffer:
  ///   featured_offer
  Future<void> featuredOfferPost({ String? select, String? prefer, FeaturedOffer? featuredOffer, }) async {
    final response = await featuredOfferPostWithHttpInfo( select: select, prefer: prefer, featuredOffer: featuredOffer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
