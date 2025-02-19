# openapi.api.UserEstablishmentBookmarkApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://192.168.50.81:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userEstablishmentBookmarkDelete**](UserEstablishmentBookmarkApi.md#userestablishmentbookmarkdelete) | **DELETE** /user_establishment_bookmark | 
[**userEstablishmentBookmarkGet**](UserEstablishmentBookmarkApi.md#userestablishmentbookmarkget) | **GET** /user_establishment_bookmark | 
[**userEstablishmentBookmarkPatch**](UserEstablishmentBookmarkApi.md#userestablishmentbookmarkpatch) | **PATCH** /user_establishment_bookmark | 
[**userEstablishmentBookmarkPost**](UserEstablishmentBookmarkApi.md#userestablishmentbookmarkpost) | **POST** /user_establishment_bookmark | 


# **userEstablishmentBookmarkDelete**
> userEstablishmentBookmarkDelete(userId, establishmentId, isPublic, createdAt, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserEstablishmentBookmarkApi();
final userId = userId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final isPublic = isPublic_example; // String | 
final createdAt = createdAt_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.userEstablishmentBookmarkDelete(userId, establishmentId, isPublic, createdAt, prefer);
} catch (e) {
    print('Exception when calling UserEstablishmentBookmarkApi->userEstablishmentBookmarkDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **isPublic** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userEstablishmentBookmarkGet**
> List<UserEstablishmentBookmark> userEstablishmentBookmarkGet(userId, establishmentId, isPublic, createdAt, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserEstablishmentBookmarkApi();
final userId = userId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final isPublic = isPublic_example; // String | 
final createdAt = createdAt_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.userEstablishmentBookmarkGet(userId, establishmentId, isPublic, createdAt, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling UserEstablishmentBookmarkApi->userEstablishmentBookmarkGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **isPublic** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<UserEstablishmentBookmark>**](UserEstablishmentBookmark.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userEstablishmentBookmarkPatch**
> userEstablishmentBookmarkPatch(userId, establishmentId, isPublic, createdAt, prefer, userEstablishmentBookmark)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserEstablishmentBookmarkApi();
final userId = userId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final isPublic = isPublic_example; // String | 
final createdAt = createdAt_example; // String | 
final prefer = prefer_example; // String | Preference
final userEstablishmentBookmark = UserEstablishmentBookmark(); // UserEstablishmentBookmark | user_establishment_bookmark

try {
    api_instance.userEstablishmentBookmarkPatch(userId, establishmentId, isPublic, createdAt, prefer, userEstablishmentBookmark);
} catch (e) {
    print('Exception when calling UserEstablishmentBookmarkApi->userEstablishmentBookmarkPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **isPublic** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **userEstablishmentBookmark** | [**UserEstablishmentBookmark**](UserEstablishmentBookmark.md)| user_establishment_bookmark | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userEstablishmentBookmarkPost**
> userEstablishmentBookmarkPost(select, prefer, userEstablishmentBookmark)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserEstablishmentBookmarkApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final userEstablishmentBookmark = UserEstablishmentBookmark(); // UserEstablishmentBookmark | user_establishment_bookmark

try {
    api_instance.userEstablishmentBookmarkPost(select, prefer, userEstablishmentBookmark);
} catch (e) {
    print('Exception when calling UserEstablishmentBookmarkApi->userEstablishmentBookmarkPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **userEstablishmentBookmark** | [**UserEstablishmentBookmark**](UserEstablishmentBookmark.md)| user_establishment_bookmark | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

