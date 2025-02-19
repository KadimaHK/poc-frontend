//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EstablishmentMenuApi {
  EstablishmentMenuApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /establishment_menu' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] price:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] menuCategoryId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<Response> establishmentMenuDeleteWithHttpInfo({ String? id, String? name, String? description, String? price, String? establishmentId, String? menuCategoryId, String? createdAt, String? updatedAt, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment_menu';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (price != null) {
      queryParams.addAll(_queryParams('', 'price', price));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (menuCategoryId != null) {
      queryParams.addAll(_queryParams('', 'menu_category_id', menuCategoryId));
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
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] price:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] menuCategoryId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  Future<void> establishmentMenuDelete({ String? id, String? name, String? description, String? price, String? establishmentId, String? menuCategoryId, String? createdAt, String? updatedAt, String? prefer, Map<String, String>? other}) async {
    final response = await establishmentMenuDeleteWithHttpInfo( id: id, name: name, description: description, price: price, establishmentId: establishmentId, menuCategoryId: menuCategoryId, createdAt: createdAt, updatedAt: updatedAt, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /establishment_menu' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] price:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] menuCategoryId:
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
  Future<Response> establishmentMenuGetWithHttpInfo({ String? id, String? name, String? description, String? price, String? establishmentId, String? menuCategoryId, String? createdAt, String? updatedAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment_menu';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (price != null) {
      queryParams.addAll(_queryParams('', 'price', price));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (menuCategoryId != null) {
      queryParams.addAll(_queryParams('', 'menu_category_id', menuCategoryId));
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
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] price:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] menuCategoryId:
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
  Future<List<EstablishmentMenu>?> establishmentMenuGet({ String? id, String? name, String? description, String? price, String? establishmentId, String? menuCategoryId, String? createdAt, String? updatedAt, String? select, String? order, String? range, String? rangeUnit, String? offset, String? limit, String? prefer, Map<String, String>? other}) async {
    final response = await establishmentMenuGetWithHttpInfo( id: id, name: name, description: description, price: price, establishmentId: establishmentId, menuCategoryId: menuCategoryId, createdAt: createdAt, updatedAt: updatedAt, select: select, order: order, range: range, rangeUnit: rangeUnit, offset: offset, limit: limit, prefer: prefer, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EstablishmentMenu>') as List)
        .cast<EstablishmentMenu>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PATCH /establishment_menu' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id:
  ///
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] price:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] menuCategoryId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [EstablishmentMenu] establishmentMenu:
  ///   establishment_menu
  Future<Response> establishmentMenuPatchWithHttpInfo({ String? id, String? name, String? description, String? price, String? establishmentId, String? menuCategoryId, String? createdAt, String? updatedAt, String? prefer, EstablishmentMenu? establishmentMenu, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment_menu';

    // ignore: prefer_final_locals
    Object? postBody = establishmentMenu;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (price != null) {
      queryParams.addAll(_queryParams('', 'price', price));
    }
    if (establishmentId != null) {
      queryParams.addAll(_queryParams('', 'establishment_id', establishmentId));
    }
    if (menuCategoryId != null) {
      queryParams.addAll(_queryParams('', 'menu_category_id', menuCategoryId));
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
  /// * [String] name:
  ///
  /// * [String] description:
  ///
  /// * [String] price:
  ///
  /// * [String] establishmentId:
  ///
  /// * [String] menuCategoryId:
  ///
  /// * [String] createdAt:
  ///
  /// * [String] updatedAt:
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [EstablishmentMenu] establishmentMenu:
  ///   establishment_menu
  Future<void> establishmentMenuPatch({ String? id, String? name, String? description, String? price, String? establishmentId, String? menuCategoryId, String? createdAt, String? updatedAt, String? prefer, EstablishmentMenu? establishmentMenu, Map<String, String>? other}) async {
    final response = await establishmentMenuPatchWithHttpInfo( id: id, name: name, description: description, price: price, establishmentId: establishmentId, menuCategoryId: menuCategoryId, createdAt: createdAt, updatedAt: updatedAt, prefer: prefer, establishmentMenu: establishmentMenu, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /establishment_menu' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] select:
  ///   Filtering Columns
  ///
  /// * [String] prefer:
  ///   Preference
  ///
  /// * [EstablishmentMenu] establishmentMenu:
  ///   establishment_menu
  Future<Response> establishmentMenuPostWithHttpInfo({ String? select, String? prefer, EstablishmentMenu? establishmentMenu, Map<String, String>? other}) async {
    // ignore: prefer_const_declarations
    final path = r'/establishment_menu';

    // ignore: prefer_final_locals
    Object? postBody = establishmentMenu;

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
  /// * [EstablishmentMenu] establishmentMenu:
  ///   establishment_menu
  Future<void> establishmentMenuPost({ String? select, String? prefer, EstablishmentMenu? establishmentMenu, Map<String, String>? other}) async {
    final response = await establishmentMenuPostWithHttpInfo( select: select, prefer: prefer, establishmentMenu: establishmentMenu, other: other);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
