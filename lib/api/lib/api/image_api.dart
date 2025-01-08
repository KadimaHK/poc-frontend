//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ImageApi {
  ImageApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Don't use this api to upload images, use the gin api instead
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileName:
  ///
  /// * [String] baseUrl:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] likes:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> imageDeleteWithHttpInfo({ String? fileName, String? baseUrl, String? imageUrl, String? likes, String? createdAt, String? updatedAt, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/image';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (fileName != null) {
      queryParams.addAll(_queryParams('', 'file_name', fileName));
    }
    if (baseUrl != null) {
      queryParams.addAll(_queryParams('', 'base_url', baseUrl));
    }
    if (imageUrl != null) {
      queryParams.addAll(_queryParams('', 'image_url', imageUrl));
    }
    if (likes != null) {
      queryParams.addAll(_queryParams('', 'likes', likes));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'created_at', createdAt));
    }
    if (updatedAt != null) {
      queryParams.addAll(_queryParams('', 'updated_at', updatedAt));
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

  /// Don't use this api to upload images, use the gin api instead
  ///
  /// Parameters:
  ///
  /// * [String] fileName:
  ///
  /// * [String] baseUrl:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] likes:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> imageDelete({ String? fileName, String? baseUrl, String? imageUrl, String? likes, String? createdAt, String? updatedAt, String? prefer, }) async {
    final response = await imageDeleteWithHttpInfo( fileName: fileName, baseUrl: baseUrl, imageUrl: imageUrl, likes: likes, createdAt: createdAt, updatedAt: updatedAt, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Don't use this api to upload images, use the gin api instead
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileName:
  ///
  /// * [String] baseUrl:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] likes:
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
  Future<Response> imageGetWithHttpInfo({ String? fileName, String? baseUrl, String? imageUrl, String? likes, String? createdAt, String? updatedAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/image';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (fileName != null) {
      queryParams.addAll(_queryParams('', 'file_name', fileName));
    }
    if (baseUrl != null) {
      queryParams.addAll(_queryParams('', 'base_url', baseUrl));
    }
    if (imageUrl != null) {
      queryParams.addAll(_queryParams('', 'image_url', imageUrl));
    }
    if (likes != null) {
      queryParams.addAll(_queryParams('', 'likes', likes));
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

  /// Don't use this api to upload images, use the gin api instead
  ///
  /// Parameters:
  ///
  /// * [String] fileName:
  ///
  /// * [String] baseUrl:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] likes:
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
  Future<List<Image>?> imageGet({ String? fileName, String? baseUrl, String? imageUrl, String? likes, String? createdAt, String? updatedAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    final response = await imageGetWithHttpInfo( fileName: fileName, baseUrl: baseUrl, imageUrl: imageUrl, likes: likes, createdAt: createdAt, updatedAt: updatedAt, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Image>') as List)
        .cast<Image>()
        .toList(growable: false);

    }
    return null;
  }

  /// Don't use this api to upload images, use the gin api instead
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fileName:
  ///
  /// * [String] baseUrl:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] likes:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Image] image:
  ///   image
  Future<Response> imagePatchWithHttpInfo({ String? fileName, String? baseUrl, String? imageUrl, String? likes, String? createdAt, String? updatedAt, String? prefer, Image? image, }) async {
    // ignore: prefer_const_declarations
    final path = r'/image';

    // ignore: prefer_final_locals
    Object? postBody = image;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (fileName != null) {
      queryParams.addAll(_queryParams('', 'file_name', fileName));
    }
    if (baseUrl != null) {
      queryParams.addAll(_queryParams('', 'base_url', baseUrl));
    }
    if (imageUrl != null) {
      queryParams.addAll(_queryParams('', 'image_url', imageUrl));
    }
    if (likes != null) {
      queryParams.addAll(_queryParams('', 'likes', likes));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'created_at', createdAt));
    }
    if (updatedAt != null) {
      queryParams.addAll(_queryParams('', 'updated_at', updatedAt));
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

  /// Don't use this api to upload images, use the gin api instead
  ///
  /// Parameters:
  ///
  /// * [String] fileName:
  ///
  /// * [String] baseUrl:
  ///
  /// * [String] imageUrl:
  ///
  /// * [String] likes:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Image] image:
  ///   image
  Future<void> imagePatch({ String? fileName, String? baseUrl, String? imageUrl, String? likes, String? createdAt, String? updatedAt, String? prefer, Image? image, }) async {
    final response = await imagePatchWithHttpInfo( fileName: fileName, baseUrl: baseUrl, imageUrl: imageUrl, likes: likes, createdAt: createdAt, updatedAt: updatedAt, prefer: prefer, image: image, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Don't use this api to upload images, use the gin api instead
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Image] image:
  ///   image
  Future<Response> imagePostWithHttpInfo({ String? select, String? prefer, Image? image, }) async {
    // ignore: prefer_const_declarations
    final path = r'/image';

    // ignore: prefer_final_locals
    Object? postBody = image;

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

  /// Don't use this api to upload images, use the gin api instead
  ///
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Image] image:
  ///   image
  Future<void> imagePost({ String? select, String? prefer, Image? image, }) async {
    final response = await imagePostWithHttpInfo( select: select, prefer: prefer, image: image, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
