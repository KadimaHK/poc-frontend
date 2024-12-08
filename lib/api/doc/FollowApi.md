# openapi.api.FollowApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.1.2:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**followDelete**](FollowApi.md#followdelete) | **DELETE** /follow | 
[**followGet**](FollowApi.md#followget) | **GET** /follow | 
[**followPatch**](FollowApi.md#followpatch) | **PATCH** /follow | 
[**followPost**](FollowApi.md#followpost) | **POST** /follow | 


# **followDelete**
> followDelete(follower, following, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = FollowApi();
final follower = follower_example; // String | 
final following = following_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.followDelete(follower, following, prefer);
} catch (e) {
    print('Exception when calling FollowApi->followDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **follower** | **String**|  | [optional] 
 **following** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **followGet**
> List<Follow> followGet(follower, following, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = FollowApi();
final follower = follower_example; // String | 
final following = following_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.followGet(follower, following, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling FollowApi->followGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **follower** | **String**|  | [optional] 
 **following** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<Follow>**](Follow.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **followPatch**
> followPatch(follower, following, prefer, follow)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = FollowApi();
final follower = follower_example; // String | 
final following = following_example; // String | 
final prefer = prefer_example; // String | Preference
final follow = Follow(); // Follow | follow

try {
    api_instance.followPatch(follower, following, prefer, follow);
} catch (e) {
    print('Exception when calling FollowApi->followPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **follower** | **String**|  | [optional] 
 **following** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **follow** | [**Follow**](Follow.md)| follow | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **followPost**
> followPost(select, prefer, follow)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = FollowApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final follow = Follow(); // Follow | follow

try {
    api_instance.followPost(select, prefer, follow);
} catch (e) {
    print('Exception when calling FollowApi->followPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **follow** | [**Follow**](Follow.md)| follow | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

