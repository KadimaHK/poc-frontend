//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ReviewApi {
  ReviewApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /review' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] userId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] title:
  ///
  /// * [String] description:
  ///
  /// * [String] content:
  ///
  /// * [String] isApproved:
  ///
  /// * [String] rating:
  ///
  /// * [String] tasteRating:
  ///
  /// * [String] decorRating:
  ///
  /// * [String] serviceRating:
  ///
  /// * [String] hygieneRating:
  ///
  /// * [String] valueRating:
  ///
  /// * [String] dateVisited:
  ///
  /// * [String] spend:
  ///   How much did the user spend in the establishment per person
  ///
  /// * [String] likes:
  ///
  /// * [String] status:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> reviewDeleteWithHttpInfo({ String? id, String? userId, String? establishmentId, String? title, String? description, String? content, String? isApproved, String? rating, String? tasteRating, String? decorRating, String? serviceRating, String? hygieneRating, String? valueRating, String? dateVisited, String? spend, String? likes, String? status, String? createdAt, String? updatedAt, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/review';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (content != null) {
      queryParams.addAll(_queryParams('', 'content', content));
    }
    if (isApproved != null) {
      queryParams.addAll(_queryParams('', 'is_approved', isApproved));
    }
    if (rating != null) {
      queryParams.addAll(_queryParams('', 'rating', rating));
    }
    if (tasteRating != null) {
      queryParams.addAll(_queryParams('', 'taste_rating', tasteRating));
    }
    if (decorRating != null) {
      queryParams.addAll(_queryParams('', 'decor_rating', decorRating));
    }
    if (serviceRating != null) {
      queryParams.addAll(_queryParams('', 'service_rating', serviceRating));
    }
    if (hygieneRating != null) {
      queryParams.addAll(_queryParams('', 'hygiene_rating', hygieneRating));
    }
    if (valueRating != null) {
      queryParams.addAll(_queryParams('', 'value_rating', valueRating));
    }
    if (dateVisited != null) {
      queryParams.addAll(_queryParams('', 'date_visited', dateVisited));
    }
    if (spend != null) {
      queryParams.addAll(_queryParams('', 'spend', spend));
    }
    if (likes != null) {
      queryParams.addAll(_queryParams('', 'likes', likes));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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
  /// * [String] userId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] title:
  ///
  /// * [String] description:
  ///
  /// * [String] content:
  ///
  /// * [String] isApproved:
  ///
  /// * [String] rating:
  ///
  /// * [String] tasteRating:
  ///
  /// * [String] decorRating:
  ///
  /// * [String] serviceRating:
  ///
  /// * [String] hygieneRating:
  ///
  /// * [String] valueRating:
  ///
  /// * [String] dateVisited:
  ///
  /// * [String] spend:
  ///   How much did the user spend in the establishment per person
  ///
  /// * [String] likes:
  ///
  /// * [String] status:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> reviewDelete({ String? id, String? userId, String? establishmentId, String? title, String? description, String? content, String? isApproved, String? rating, String? tasteRating, String? decorRating, String? serviceRating, String? hygieneRating, String? valueRating, String? dateVisited, String? spend, String? likes, String? status, String? createdAt, String? updatedAt, String? prefer, Map<String, String>? other}) async {
    final response = await reviewDeleteWithHttpInfo( id: id, userId: userId, establishmentId: establishmentId, title: title, description: description, content: content, isApproved: isApproved, rating: rating, tasteRating: tasteRating, decorRating: decorRating, serviceRating: serviceRating, hygieneRating: hygieneRating, valueRating: valueRating, dateVisited: dateVisited, spend: spend, likes: likes, status: status, createdAt: createdAt, updatedAt: updatedAt, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /review' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] userId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] title:
  ///
  /// * [String] description:
  ///
  /// * [String] content:
  ///
  /// * [String] isApproved:
  ///
  /// * [String] rating:
  ///
  /// * [String] tasteRating:
  ///
  /// * [String] decorRating:
  ///
  /// * [String] serviceRating:
  ///
  /// * [String] hygieneRating:
  ///
  /// * [String] valueRating:
  ///
  /// * [String] dateVisited:
  ///
  /// * [String] spend:
  ///   How much did the user spend in the establishment per person
  ///
  /// * [String] likes:
  ///
  /// * [String] status:
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
  Future<Response> reviewGetWithHttpInfo({ String? id, String? userId, String? establishmentId, String? title, String? description, String? content, String? isApproved, String? rating, String? tasteRating, String? decorRating, String? serviceRating, String? hygieneRating, String? valueRating, String? dateVisited, String? spend, String? likes, String? status, String? createdAt, String? updatedAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/review';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (content != null) {
      queryParams.addAll(_queryParams('', 'content', content));
    }
    if (isApproved != null) {
      queryParams.addAll(_queryParams('', 'is_approved', isApproved));
    }
    if (rating != null) {
      queryParams.addAll(_queryParams('', 'rating', rating));
    }
    if (tasteRating != null) {
      queryParams.addAll(_queryParams('', 'taste_rating', tasteRating));
    }
    if (decorRating != null) {
      queryParams.addAll(_queryParams('', 'decor_rating', decorRating));
    }
    if (serviceRating != null) {
      queryParams.addAll(_queryParams('', 'service_rating', serviceRating));
    }
    if (hygieneRating != null) {
      queryParams.addAll(_queryParams('', 'hygiene_rating', hygieneRating));
    }
    if (valueRating != null) {
      queryParams.addAll(_queryParams('', 'value_rating', valueRating));
    }
    if (dateVisited != null) {
      queryParams.addAll(_queryParams('', 'date_visited', dateVisited));
    }
    if (spend != null) {
      queryParams.addAll(_queryParams('', 'spend', spend));
    }
    if (likes != null) {
      queryParams.addAll(_queryParams('', 'likes', likes));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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
  /// * [String] userId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] title:
  ///
  /// * [String] description:
  ///
  /// * [String] content:
  ///
  /// * [String] isApproved:
  ///
  /// * [String] rating:
  ///
  /// * [String] tasteRating:
  ///
  /// * [String] decorRating:
  ///
  /// * [String] serviceRating:
  ///
  /// * [String] hygieneRating:
  ///
  /// * [String] valueRating:
  ///
  /// * [String] dateVisited:
  ///
  /// * [String] spend:
  ///   How much did the user spend in the establishment per person
  ///
  /// * [String] likes:
  ///
  /// * [String] status:
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
  Future<List<Review>?> reviewGet({ String? id, String? userId, String? establishmentId, String? title, String? description, String? content, String? isApproved, String? rating, String? tasteRating, String? decorRating, String? serviceRating, String? hygieneRating, String? valueRating, String? dateVisited, String? spend, String? likes, String? status, String? createdAt, String? updatedAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    final response = await reviewGetWithHttpInfo( id: id, userId: userId, establishmentId: establishmentId, title: title, description: description, content: content, isApproved: isApproved, rating: rating, tasteRating: tasteRating, decorRating: decorRating, serviceRating: serviceRating, hygieneRating: hygieneRating, valueRating: valueRating, dateVisited: dateVisited, spend: spend, likes: likes, status: status, createdAt: createdAt, updatedAt: updatedAt, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Review>') as List)
        .cast<Review>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /review' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] userId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] title:
  ///
  /// * [String] description:
  ///
  /// * [String] content:
  ///
  /// * [String] isApproved:
  ///
  /// * [String] rating:
  ///
  /// * [String] tasteRating:
  ///
  /// * [String] decorRating:
  ///
  /// * [String] serviceRating:
  ///
  /// * [String] hygieneRating:
  ///
  /// * [String] valueRating:
  ///
  /// * [String] dateVisited:
  ///
  /// * [String] spend:
  ///   How much did the user spend in the establishment per person
  ///
  /// * [String] likes:
  ///
  /// * [String] status:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Review] review:
  ///   review
  Future<Response> reviewPatchWithHttpInfo({ String? id, String? userId, String? establishmentId, String? title, String? description, String? content, String? isApproved, String? rating, String? tasteRating, String? decorRating, String? serviceRating, String? hygieneRating, String? valueRating, String? dateVisited, String? spend, String? likes, String? status, String? createdAt, String? updatedAt, String? prefer, Review? review, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/review';

    // ignore: prefer_final_locals
    Object? postBody = review;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (content != null) {
      queryParams.addAll(_queryParams('', 'content', content));
    }
    if (isApproved != null) {
      queryParams.addAll(_queryParams('', 'is_approved', isApproved));
    }
    if (rating != null) {
      queryParams.addAll(_queryParams('', 'rating', rating));
    }
    if (tasteRating != null) {
      queryParams.addAll(_queryParams('', 'taste_rating', tasteRating));
    }
    if (decorRating != null) {
      queryParams.addAll(_queryParams('', 'decor_rating', decorRating));
    }
    if (serviceRating != null) {
      queryParams.addAll(_queryParams('', 'service_rating', serviceRating));
    }
    if (hygieneRating != null) {
      queryParams.addAll(_queryParams('', 'hygiene_rating', hygieneRating));
    }
    if (valueRating != null) {
      queryParams.addAll(_queryParams('', 'value_rating', valueRating));
    }
    if (dateVisited != null) {
      queryParams.addAll(_queryParams('', 'date_visited', dateVisited));
    }
    if (spend != null) {
      queryParams.addAll(_queryParams('', 'spend', spend));
    }
    if (likes != null) {
      queryParams.addAll(_queryParams('', 'likes', likes));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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
  /// * [String] userId:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] title:
  ///
  /// * [String] description:
  ///
  /// * [String] content:
  ///
  /// * [String] isApproved:
  ///
  /// * [String] rating:
  ///
  /// * [String] tasteRating:
  ///
  /// * [String] decorRating:
  ///
  /// * [String] serviceRating:
  ///
  /// * [String] hygieneRating:
  ///
  /// * [String] valueRating:
  ///
  /// * [String] dateVisited:
  ///
  /// * [String] spend:
  ///   How much did the user spend in the establishment per person
  ///
  /// * [String] likes:
  ///
  /// * [String] status:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Review] review:
  ///   review
  Future<void> reviewPatch({ String? id, String? userId, String? establishmentId, String? title, String? description, String? content, String? isApproved, String? rating, String? tasteRating, String? decorRating, String? serviceRating, String? hygieneRating, String? valueRating, String? dateVisited, String? spend, String? likes, String? status, String? createdAt, String? updatedAt, String? prefer, Review? review, Map<String, String>? other}) async {
    final response = await reviewPatchWithHttpInfo( id: id, userId: userId, establishmentId: establishmentId, title: title, description: description, content: content, isApproved: isApproved, rating: rating, tasteRating: tasteRating, decorRating: decorRating, serviceRating: serviceRating, hygieneRating: hygieneRating, valueRating: valueRating, dateVisited: dateVisited, spend: spend, likes: likes, status: status, createdAt: createdAt, updatedAt: updatedAt, prefer: prefer, review: review, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /review' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [Review] review:
  ///   review
  Future<Response> reviewPostWithHttpInfo({ String? select, String? prefer, Review? review, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/review';

    // ignore: prefer_final_locals
    Object? postBody = review;

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
  /// * [Review] review:
  ///   review
  Future<void> reviewPost({ String? select, String? prefer, Review? review, Map<String, String>? other}) async {
    final response = await reviewPostWithHttpInfo( select: select, prefer: prefer, review: review, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
