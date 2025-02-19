# openapi.api.EstablishmentMenuApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://192.168.50.81:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**establishmentMenuDelete**](EstablishmentMenuApi.md#establishmentmenudelete) | **DELETE** /establishment_menu | 
[**establishmentMenuGet**](EstablishmentMenuApi.md#establishmentmenuget) | **GET** /establishment_menu | 
[**establishmentMenuPatch**](EstablishmentMenuApi.md#establishmentmenupatch) | **PATCH** /establishment_menu | 
[**establishmentMenuPost**](EstablishmentMenuApi.md#establishmentmenupost) | **POST** /establishment_menu | 


# **establishmentMenuDelete**
> establishmentMenuDelete(id, name, description, price, establishmentId, menuCategoryId, createdAt, updatedAt, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentMenuApi();
final id = id_example; // String | 
final name = name_example; // String | 
final description = description_example; // String | 
final price = price_example; // String | 
final establishmentId = establishmentId_example; // String | 
final menuCategoryId = menuCategoryId_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.establishmentMenuDelete(id, name, description, price, establishmentId, menuCategoryId, createdAt, updatedAt, prefer);
} catch (e) {
    print('Exception when calling EstablishmentMenuApi->establishmentMenuDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **price** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **menuCategoryId** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **updatedAt** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentMenuGet**
> List<EstablishmentMenu> establishmentMenuGet(id, name, description, price, establishmentId, menuCategoryId, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentMenuApi();
final id = id_example; // String | 
final name = name_example; // String | 
final description = description_example; // String | 
final price = price_example; // String | 
final establishmentId = establishmentId_example; // String | 
final menuCategoryId = menuCategoryId_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.establishmentMenuGet(id, name, description, price, establishmentId, menuCategoryId, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling EstablishmentMenuApi->establishmentMenuGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **price** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **menuCategoryId** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **updatedAt** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<EstablishmentMenu>**](EstablishmentMenu.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentMenuPatch**
> establishmentMenuPatch(id, name, description, price, establishmentId, menuCategoryId, createdAt, updatedAt, prefer, establishmentMenu)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentMenuApi();
final id = id_example; // String | 
final name = name_example; // String | 
final description = description_example; // String | 
final price = price_example; // String | 
final establishmentId = establishmentId_example; // String | 
final menuCategoryId = menuCategoryId_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference
final establishmentMenu = EstablishmentMenu(); // EstablishmentMenu | establishment_menu

try {
    api_instance.establishmentMenuPatch(id, name, description, price, establishmentId, menuCategoryId, createdAt, updatedAt, prefer, establishmentMenu);
} catch (e) {
    print('Exception when calling EstablishmentMenuApi->establishmentMenuPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **price** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **menuCategoryId** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **updatedAt** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **establishmentMenu** | [**EstablishmentMenu**](EstablishmentMenu.md)| establishment_menu | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentMenuPost**
> establishmentMenuPost(select, prefer, establishmentMenu)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentMenuApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final establishmentMenu = EstablishmentMenu(); // EstablishmentMenu | establishment_menu

try {
    api_instance.establishmentMenuPost(select, prefer, establishmentMenu);
} catch (e) {
    print('Exception when calling EstablishmentMenuApi->establishmentMenuPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **establishmentMenu** | [**EstablishmentMenu**](EstablishmentMenu.md)| establishment_menu | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

