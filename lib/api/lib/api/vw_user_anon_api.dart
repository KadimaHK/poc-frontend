//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VwUserAnonApi {
  VwUserAnonApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// View for anonymous user to select user data. Logged in users should use user directly.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] uuid:
  ///
  /// * [String] iconUrl:
  ///
  /// * [String] email:
  ///
  /// * [String] name:
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
  /// * [String] prefer:
  ///   Preference
  Future<Response> vwUserAnonDeleteWithHttpInfo({ String? id, String? uuid, String? iconUrl, String? email, String? name, String? age, String? gender, String? description, String? followingCount, String? followerCount, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/vw_user_anon';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (uuid != null) {
      queryParams.addAll(_queryParams('', 'uuid', uuid));
    }
    if (iconUrl != null) {
      queryParams.addAll(_queryParams('', 'icon_url', iconUrl));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
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

  /// View for anonymous user to select user data. Logged in users should use user directly.
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] uuid:
  ///
  /// * [String] iconUrl:
  ///
  /// * [String] email:
  ///
  /// * [String] name:
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
  /// * [String] prefer:
  ///   Preference
  Future<void> vwUserAnonDelete({ String? id, String? uuid, String? iconUrl, String? email, String? name, String? age, String? gender, String? description, String? followingCount, String? followerCount, String? prefer, Map<String, String>? other}) async {
    final response = await vwUserAnonDeleteWithHttpInfo( id: id, uuid: uuid, iconUrl: iconUrl, email: email, name: name, age: age, gender: gender, description: description, followingCount: followingCount, followerCount: followerCount, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View for anonymous user to select user data. Logged in users should use user directly.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] uuid:
  ///
  /// * [String] iconUrl:
  ///
  /// * [String] email:
  ///
  /// * [String] name:
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
  Future<Response> vwUserAnonGetWithHttpInfo({ String? id, String? uuid, String? iconUrl, String? email, String? name, String? age, String? gender, String? description, String? followingCount, String? followerCount, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/vw_user_anon';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (uuid != null) {
      queryParams.addAll(_queryParams('', 'uuid', uuid));
    }
    if (iconUrl != null) {
      queryParams.addAll(_queryParams('', 'icon_url', iconUrl));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
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

  /// View for anonymous user to select user data. Logged in users should use user directly.
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] uuid:
  ///
  /// * [String] iconUrl:
  ///
  /// * [String] email:
  ///
  /// * [String] name:
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
  Future<List<VwUserAnon>?> vwUserAnonGet({ String? id, String? uuid, String? iconUrl, String? email, String? name, String? age, String? gender, String? description, String? followingCount, String? followerCount, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    final response = await vwUserAnonGetWithHttpInfo( id: id, uuid: uuid, iconUrl: iconUrl, email: email, name: name, age: age, gender: gender, description: description, followingCount: followingCount, followerCount: followerCount, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<VwUserAnon>') as List)
        .cast<VwUserAnon>()
        .toList(growable: false);

    }
    return null;
  }

  /// View for anonymous user to select user data. Logged in users should use user directly.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] uuid:
  ///
  /// * [String] iconUrl:
  ///
  /// * [String] email:
  ///
  /// * [String] name:
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
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [VwUserAnon] vwUserAnon:
  ///   vw_user_anon
  Future<Response> vwUserAnonPatchWithHttpInfo({ String? id, String? uuid, String? iconUrl, String? email, String? name, String? age, String? gender, String? description, String? followingCount, String? followerCount, String? prefer, VwUserAnon? vwUserAnon, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/vw_user_anon';

    // ignore: prefer_final_locals
    Object? postBody = vwUserAnon;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (uuid != null) {
      queryParams.addAll(_queryParams('', 'uuid', uuid));
    }
    if (iconUrl != null) {
      queryParams.addAll(_queryParams('', 'icon_url', iconUrl));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
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

  /// View for anonymous user to select user data. Logged in users should use user directly.
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] uuid:
  ///
  /// * [String] iconUrl:
  ///
  /// * [String] email:
  ///
  /// * [String] name:
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
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [VwUserAnon] vwUserAnon:
  ///   vw_user_anon
  Future<void> vwUserAnonPatch({ String? id, String? uuid, String? iconUrl, String? email, String? name, String? age, String? gender, String? description, String? followingCount, String? followerCount, String? prefer, VwUserAnon? vwUserAnon, Map<String, String>? other}) async {
    final response = await vwUserAnonPatchWithHttpInfo( id: id, uuid: uuid, iconUrl: iconUrl, email: email, name: name, age: age, gender: gender, description: description, followingCount: followingCount, followerCount: followerCount, prefer: prefer, vwUserAnon: vwUserAnon, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View for anonymous user to select user data. Logged in users should use user directly.
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
  /// * [VwUserAnon] vwUserAnon:
  ///   vw_user_anon
  Future<Response> vwUserAnonPostWithHttpInfo({ String? select, String? prefer, VwUserAnon? vwUserAnon, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/vw_user_anon';

    // ignore: prefer_final_locals
    Object? postBody = vwUserAnon;

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

  /// View for anonymous user to select user data. Logged in users should use user directly.
  ///
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [VwUserAnon] vwUserAnon:
  ///   vw_user_anon
  Future<void> vwUserAnonPost({ String? select, String? prefer, VwUserAnon? vwUserAnon, Map<String, String>? other}) async {
    final response = await vwUserAnonPostWithHttpInfo( select: select, prefer: prefer, vwUserAnon: vwUserAnon, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
