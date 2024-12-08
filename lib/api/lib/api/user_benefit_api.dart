//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserBenefitApi {
  UserBenefitApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /user_benefit' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userId:
  ///
  /// * [String] benefitId:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> userBenefitDeleteWithHttpInfo({ String? userId, String? benefitId, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user_benefit';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (benefitId != null) {
      queryParams.addAll(_queryParams('', 'benefit_id', benefitId));
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
  /// * [String] userId:
  ///
  /// * [String] benefitId:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> userBenefitDelete({ String? userId, String? benefitId, String? prefer, }) async {
    final response = await userBenefitDeleteWithHttpInfo( userId: userId, benefitId: benefitId, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /user_benefit' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userId:
  ///
  /// * [String] benefitId:
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
  Future<Response> userBenefitGetWithHttpInfo({ String? userId, String? benefitId, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user_benefit';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (benefitId != null) {
      queryParams.addAll(_queryParams('', 'benefit_id', benefitId));
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
  /// * [String] userId:
  ///
  /// * [String] benefitId:
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
  Future<List<UserBenefit>?> userBenefitGet({ String? userId, String? benefitId, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    final response = await userBenefitGetWithHttpInfo( userId: userId, benefitId: benefitId, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserBenefit>') as List)
        .cast<UserBenefit>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /user_benefit' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userId:
  ///
  /// * [String] benefitId:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [UserBenefit] userBenefit:
  ///   user_benefit
  Future<Response> userBenefitPatchWithHttpInfo({ String? userId, String? benefitId, String? prefer, UserBenefit? userBenefit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user_benefit';

    // ignore: prefer_final_locals
    Object? postBody = userBenefit;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (benefitId != null) {
      queryParams.addAll(_queryParams('', 'benefit_id', benefitId));
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
  /// * [String] userId:
  ///
  /// * [String] benefitId:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [UserBenefit] userBenefit:
  ///   user_benefit
  Future<void> userBenefitPatch({ String? userId, String? benefitId, String? prefer, UserBenefit? userBenefit, }) async {
    final response = await userBenefitPatchWithHttpInfo( userId: userId, benefitId: benefitId, prefer: prefer, userBenefit: userBenefit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /user_benefit' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [UserBenefit] userBenefit:
  ///   user_benefit
  Future<Response> userBenefitPostWithHttpInfo({ String? select, String? prefer, UserBenefit? userBenefit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user_benefit';

    // ignore: prefer_final_locals
    Object? postBody = userBenefit;

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
  /// * [UserBenefit] userBenefit:
  ///   user_benefit
  Future<void> userBenefitPost({ String? select, String? prefer, UserBenefit? userBenefit, }) async {
    final response = await userBenefitPostWithHttpInfo( select: select, prefer: prefer, userBenefit: userBenefit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
