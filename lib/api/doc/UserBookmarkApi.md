# openapi.api.UserBookmarkApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://poc-bar-app.com:80/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userBookmarkDelete**](UserBookmarkApi.md#userbookmarkdelete) | **DELETE** /user_bookmark | 
[**userBookmarkGet**](UserBookmarkApi.md#userbookmarkget) | **GET** /user_bookmark | 
[**userBookmarkPatch**](UserBookmarkApi.md#userbookmarkpatch) | **PATCH** /user_bookmark | 
[**userBookmarkPost**](UserBookmarkApi.md#userbookmarkpost) | **POST** /user_bookmark | 


# **userBookmarkDelete**
> userBookmarkDelete(userId, establishmentId, createdAt, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserBookmarkApi();
final userId = userId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final createdAt = createdAt_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.userBookmarkDelete(userId, establishmentId, createdAt, prefer);
} catch (e) {
    print('Exception when calling UserBookmarkApi->userBookmarkDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
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

# **userBookmarkGet**
> List<UserBookmark> userBookmarkGet(userId, establishmentId, createdAt, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserBookmarkApi();
final userId = userId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final createdAt = createdAt_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.userBookmarkGet(userId, establishmentId, createdAt, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling UserBookmarkApi->userBookmarkGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<UserBookmark>**](UserBookmark.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userBookmarkPatch**
> userBookmarkPatch(userId, establishmentId, createdAt, prefer, userBookmark)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserBookmarkApi();
final userId = userId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final createdAt = createdAt_example; // String | 
final prefer = prefer_example; // String | Preference
final userBookmark = UserBookmark(); // UserBookmark | user_bookmark

try {
    api_instance.userBookmarkPatch(userId, establishmentId, createdAt, prefer, userBookmark);
} catch (e) {
    print('Exception when calling UserBookmarkApi->userBookmarkPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **userBookmark** | [**UserBookmark**](UserBookmark.md)| user_bookmark | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userBookmarkPost**
> userBookmarkPost(select, prefer, userBookmark)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserBookmarkApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final userBookmark = UserBookmark(); // UserBookmark | user_bookmark

try {
    api_instance.userBookmarkPost(select, prefer, userBookmark);
} catch (e) {
    print('Exception when calling UserBookmarkApi->userBookmarkPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **userBookmark** | [**UserBookmark**](UserBookmark.md)| user_bookmark | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

