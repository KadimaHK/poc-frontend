//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VwFeaturedOfferApi {
  VwFeaturedOfferApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /vw_featured_offer' operation and returns the [Response].
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
  /// * [String] imageId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] baseUrl:
  ///
  /// * [String] fileName:
  ///
  /// * [String] location:
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
  Future<Response> vwFeaturedOfferGetWithHttpInfo({ String? id, String? title, String? voucherCode, String? expiry, String? details, String? description, String? redemptionPeriod, String? howToRedeem, String? isGlobal, String? imageId, String? establishmentId, String? baseUrl, String? fileName, String? location, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vw_featured_offer';

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
    if (imageId != null) {
      queryParams.addAll(_queryParams('', 'image_id', imageId));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (baseUrl != null) {
      queryParams.addAll(_queryParams('', 'base_url', baseUrl));
    }
    if (fileName != null) {
      queryParams.addAll(_queryParams('', 'file_name', fileName));
    }
    if (location != null) {
      queryParams.addAll(_queryParams('', 'location', location));
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
  /// * [String] imageId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] baseUrl:
  ///
  /// * [String] fileName:
  ///
  /// * [String] location:
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
  Future<List<VwFeaturedOffer>?> vwFeaturedOfferGet({ String? id, String? title, String? voucherCode, String? expiry, String? details, String? description, String? redemptionPeriod, String? howToRedeem, String? isGlobal, String? imageId, String? establishmentId, String? baseUrl, String? fileName, String? location, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    final response = await vwFeaturedOfferGetWithHttpInfo( id: id, title: title, voucherCode: voucherCode, expiry: expiry, details: details, description: description, redemptionPeriod: redemptionPeriod, howToRedeem: howToRedeem, isGlobal: isGlobal, imageId: imageId, establishmentId: establishmentId, baseUrl: baseUrl, fileName: fileName, location: location, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<VwFeaturedOffer>') as List)
        .cast<VwFeaturedOffer>()
        .toList(growable: false);

    }
    return null;
  }
}
