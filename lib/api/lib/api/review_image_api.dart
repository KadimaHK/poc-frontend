//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ReviewImageApi {
  ReviewImageApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /review_image' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] reviewId:
  ///
  /// * [String] imageId:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> reviewImageDeleteWithHttpInfo({ String? id, String? reviewId, String? imageId, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/review_image';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (reviewId != null) {
      queryParams.addAll(_queryParams('', 'review_id', reviewId));
    }
    if (imageId != null) {
      queryParams.addAll(_queryParams('', 'image_id', imageId));
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
  /// * [String] reviewId:
  ///
  /// * [String] imageId:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> reviewImageDelete({ String? id, String? reviewId, String? imageId, String? prefer, }) async {
    final response = await reviewImageDeleteWithHttpInfo( id: id, reviewId: reviewId, imageId: imageId, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /review_image' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] reviewId:
  ///
  /// * [String] imageId:
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
  Future<Response> reviewImageGetWithHttpInfo({ String? id, String? reviewId, String? imageId, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/review_image';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (reviewId != null) {
      queryParams.addAll(_queryParams('', 'review_id', reviewId));
    }
    if (imageId != null) {
      queryParams.addAll(_queryParams('', 'image_id', imageId));
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
  /// * [String] reviewId:
  ///
  /// * [String] imageId:
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
  Future<List<ReviewImage>?> reviewImageGet({ String? id, String? reviewId, String? imageId, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    final response = await reviewImageGetWithHttpInfo( id: id, reviewId: reviewId, imageId: imageId, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ReviewImage>') as List)
        .cast<ReviewImage>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /review_image' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] reviewId:
  ///
  /// * [String] imageId:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [ReviewImage] reviewImage:
  ///   review_image
  Future<Response> reviewImagePatchWithHttpInfo({ String? id, String? reviewId, String? imageId, String? prefer, ReviewImage? reviewImage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/review_image';

    // ignore: prefer_final_locals
    Object? postBody = reviewImage;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (reviewId != null) {
      queryParams.addAll(_queryParams('', 'review_id', reviewId));
    }
    if (imageId != null) {
      queryParams.addAll(_queryParams('', 'image_id', imageId));
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
  /// * [String] reviewId:
  ///
  /// * [String] imageId:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [ReviewImage] reviewImage:
  ///   review_image
  Future<void> reviewImagePatch({ String? id, String? reviewId, String? imageId, String? prefer, ReviewImage? reviewImage, }) async {
    final response = await reviewImagePatchWithHttpInfo( id: id, reviewId: reviewId, imageId: imageId, prefer: prefer, reviewImage: reviewImage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /review_image' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [ReviewImage] reviewImage:
  ///   review_image
  Future<Response> reviewImagePostWithHttpInfo({ String? select, String? prefer, ReviewImage? reviewImage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/review_image';

    // ignore: prefer_final_locals
    Object? postBody = reviewImage;

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
  /// * [ReviewImage] reviewImage:
  ///   review_image
  Future<void> reviewImagePost({ String? select, String? prefer, ReviewImage? reviewImage, }) async {
    final response = await reviewImagePostWithHttpInfo( select: select, prefer: prefer, reviewImage: reviewImage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
