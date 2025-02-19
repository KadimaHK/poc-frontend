//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserRoleApi {
  UserRoleApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /user_role' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userId:
  ///
  /// * [String] roleName:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> userRoleDeleteWithHttpInfo({ String? userId, String? roleName, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/user_role';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (roleName != null) {
      queryParams.addAll(_queryParams('', 'role_name', roleName));
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
  /// * [String] userId:
  ///
  /// * [String] roleName:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> userRoleDelete({ String? userId, String? roleName, String? prefer, Map<String, String>? other}) async {
    final response = await userRoleDeleteWithHttpInfo( userId: userId, roleName: roleName, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /user_role' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userId:
  ///
  /// * [String] roleName:
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
  Future<Response> userRoleGetWithHttpInfo({ String? userId, String? roleName, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/user_role';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (roleName != null) {
      queryParams.addAll(_queryParams('', 'role_name', roleName));
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
  /// * [String] userId:
  ///
  /// * [String] roleName:
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
  Future<List<UserRole>?> userRoleGet({ String? userId, String? roleName, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    final response = await userRoleGetWithHttpInfo( userId: userId, roleName: roleName, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserRole>') as List)
        .cast<UserRole>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /user_role' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userId:
  ///
  /// * [String] roleName:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [UserRole] userRole:
  ///   user_role
  Future<Response> userRolePatchWithHttpInfo({ String? userId, String? roleName, String? prefer, UserRole? userRole, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/user_role';

    // ignore: prefer_final_locals
    Object? postBody = userRole;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (roleName != null) {
      queryParams.addAll(_queryParams('', 'role_name', roleName));
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
  /// * [String] userId:
  ///
  /// * [String] roleName:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [UserRole] userRole:
  ///   user_role
  Future<void> userRolePatch({ String? userId, String? roleName, String? prefer, UserRole? userRole, Map<String, String>? other}) async {
    final response = await userRolePatchWithHttpInfo( userId: userId, roleName: roleName, prefer: prefer, userRole: userRole, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /user_role' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [UserRole] userRole:
  ///   user_role
  Future<Response> userRolePostWithHttpInfo({ String? select, String? prefer, UserRole? userRole, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/user_role';

    // ignore: prefer_final_locals
    Object? postBody = userRole;

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
  /// * [UserRole] userRole:
  ///   user_role
  Future<void> userRolePost({ String? select, String? prefer, UserRole? userRole, Map<String, String>? other}) async {
    final response = await userRolePostWithHttpInfo( select: select, prefer: prefer, userRole: userRole, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
