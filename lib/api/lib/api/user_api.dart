//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserApi {
  UserApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /user' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] email:
  ///
  /// * [String] name:
  ///
  /// * [String] password:
  ///
  /// * [String] iconUrl:
  ///
  /// * [String] age:
  ///
  /// * [String] gender:
  ///
  /// * [String] description:
  ///
  /// * [String] followingCount:
  ///
  /// * [String] followerCount:
  ///
  /// * [String] verified:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> userDeleteWithHttpInfo({ String? id, String? email, String? name, String? password, String? iconUrl, String? age, String? gender, String? description, String? followingCount, String? followerCount, String? verified, String? createdAt, String? updatedAt, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (password != null) {
      queryParams.addAll(_queryParams('', 'password', password));
    }
    if (iconUrl != null) {
      queryParams.addAll(_queryParams('', 'icon_url', iconUrl));
    }
    if (age != null) {
      queryParams.addAll(_queryParams('', 'age', age));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (followingCount != null) {
      queryParams.addAll(_queryParams('', 'following_count', followingCount));
    }
    if (followerCount != null) {
      queryParams.addAll(_queryParams('', 'follower_count', followerCount));
    }
    if (verified != null) {
      queryParams.addAll(_queryParams('', 'verified', verified));
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

  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] email:
  ///
  /// * [String] name:
  ///
  /// * [String] password:
  ///
  /// * [String] iconUrl:
  ///
  /// * [String] age:
  ///
  /// * [String] gender:
  ///
  /// * [String] description:
  ///
  /// * [String] followingCount:
  ///
  /// * [String] followerCount:
  ///
  /// * [String] verified:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> userDelete({ String? id, String? email, String? name, String? password, String? iconUrl, String? age, String? gender, String? description, String? followingCount, String? followerCount, String? verified, String? createdAt, String? updatedAt, String? prefer, }) async {
    final response = await userDeleteWithHttpInfo( id: id, email: email, name: name, password: password, iconUrl: iconUrl, age: age, gender: gender, description: description, followingCount: followingCount, followerCount: followerCount, verified: verified, createdAt: createdAt, updatedAt: updatedAt, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /user' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] email:
  ///
  /// * [String] name:
  ///
  /// * [String] password:
  ///
  /// * [String] iconUrl:
  ///
  /// * [String] age:
  ///
  /// * [String] gender:
  ///
  /// * [String] description:
  ///
  /// * [String] followingCount:
  ///
  /// * [String] followerCount:
  ///
  /// * [String] verified:
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
  Future<Response> userGetWithHttpInfo({ String? id, String? email, String? name, String? password, String? iconUrl, String? age, String? gender, String? description, String? followingCount, String? followerCount, String? verified, String? createdAt, String? updatedAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (password != null) {
      queryParams.addAll(_queryParams('', 'password', password));
    }
    if (iconUrl != null) {
      queryParams.addAll(_queryParams('', 'icon_url', iconUrl));
    }
    if (age != null) {
      queryParams.addAll(_queryParams('', 'age', age));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (followingCount != null) {
      queryParams.addAll(_queryParams('', 'following_count', followingCount));
    }
    if (followerCount != null) {
      queryParams.addAll(_queryParams('', 'follower_count', followerCount));
    }
    if (verified != null) {
      queryParams.addAll(_queryParams('', 'verified', verified));
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

  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] email:
  ///
  /// * [String] name:
  ///
  /// * [String] password:
  ///
  /// * [String] iconUrl:
  ///
  /// * [String] age:
  ///
  /// * [String] gender:
  ///
  /// * [String] description:
  ///
  /// * [String] followingCount:
  ///
  /// * [String] followerCount:
  ///
  /// * [String] verified:
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
  Future<List<User>?> userGet({ String? id, String? email, String? name, String? password, String? iconUrl, String? age, String? gender, String? description, String? followingCount, String? followerCount, String? verified, String? createdAt, String? updatedAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, }) async {
    final response = await userGetWithHttpInfo( id: id, email: email, name: name, password: password, iconUrl: iconUrl, age: age, gender: gender, description: description, followingCount: followingCount, followerCount: followerCount, verified: verified, createdAt: createdAt, updatedAt: updatedAt, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<User>') as List)
        .cast<User>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /user' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] email:
  ///
  /// * [String] name:
  ///
  /// * [String] password:
  ///
  /// * [String] iconUrl:
  ///
  /// * [String] age:
  ///
  /// * [String] gender:
  ///
  /// * [String] description:
  ///
  /// * [String] followingCount:
  ///
  /// * [String] followerCount:
  ///
  /// * [String] verified:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [User] user:
  ///   user
  Future<Response> userPatchWithHttpInfo({ String? id, String? email, String? name, String? password, String? iconUrl, String? age, String? gender, String? description, String? followingCount, String? followerCount, String? verified, String? createdAt, String? updatedAt, String? prefer, User? user, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user';

    // ignore: prefer_final_locals
    Object? postBody = user;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (password != null) {
      queryParams.addAll(_queryParams('', 'password', password));
    }
    if (iconUrl != null) {
      queryParams.addAll(_queryParams('', 'icon_url', iconUrl));
    }
    if (age != null) {
      queryParams.addAll(_queryParams('', 'age', age));
    }
    if (gender != null) {
      queryParams.addAll(_queryParams('', 'gender', gender));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (followingCount != null) {
      queryParams.addAll(_queryParams('', 'following_count', followingCount));
    }
    if (followerCount != null) {
      queryParams.addAll(_queryParams('', 'follower_count', followerCount));
    }
    if (verified != null) {
      queryParams.addAll(_queryParams('', 'verified', verified));
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

  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] email:
  ///
  /// * [String] name:
  ///
  /// * [String] password:
  ///
  /// * [String] iconUrl:
  ///
  /// * [String] age:
  ///
  /// * [String] gender:
  ///
  /// * [String] description:
  ///
  /// * [String] followingCount:
  ///
  /// * [String] followerCount:
  ///
  /// * [String] verified:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [User] user:
  ///   user
  Future<void> userPatch({ String? id, String? email, String? name, String? password, String? iconUrl, String? age, String? gender, String? description, String? followingCount, String? followerCount, String? verified, String? createdAt, String? updatedAt, String? prefer, User? user, }) async {
    final response = await userPatchWithHttpInfo( id: id, email: email, name: name, password: password, iconUrl: iconUrl, age: age, gender: gender, description: description, followingCount: followingCount, followerCount: followerCount, verified: verified, createdAt: createdAt, updatedAt: updatedAt, prefer: prefer, user: user, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /user' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [User] user:
  ///   user
  Future<Response> userPostWithHttpInfo({ String? select, String? prefer, User? user, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user';

    // ignore: prefer_final_locals
    Object? postBody = user;

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
  /// * [User] user:
  ///   user
  Future<void> userPost({ String? select, String? prefer, User? user, }) async {
    final response = await userPostWithHttpInfo( select: select, prefer: prefer, user: user, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
