# openapi.api.FeaturedApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.1.2:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**featuredDelete**](FeaturedApi.md#featureddelete) | **DELETE** /featured | 
[**featuredGet**](FeaturedApi.md#featuredget) | **GET** /featured | 
[**featuredPatch**](FeaturedApi.md#featuredpatch) | **PATCH** /featured | 
[**featuredPost**](FeaturedApi.md#featuredpost) | **POST** /featured | 


# **featuredDelete**
> featuredDelete(id, title, description, imageUrl, content, establishmentId, createdAt, updatedAt, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = FeaturedApi();
final id = id_example; // String | 
final title = title_example; // String | 
final description = description_example; // String | 
final imageUrl = imageUrl_example; // String | 
final content = content_example; // String | 
final establishmentId = establishmentId_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.featuredDelete(id, title, description, imageUrl, content, establishmentId, createdAt, updatedAt, prefer);
} catch (e) {
    print('Exception when calling FeaturedApi->featuredDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **title** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **content** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
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

# **featuredGet**
> List<Featured> featuredGet(id, title, description, imageUrl, content, establishmentId, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = FeaturedApi();
final id = id_example; // String | 
final title = title_example; // String | 
final description = description_example; // String | 
final imageUrl = imageUrl_example; // String | 
final content = content_example; // String | 
final establishmentId = establishmentId_example; // String | 
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
    final result = api_instance.featuredGet(id, title, description, imageUrl, content, establishmentId, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling FeaturedApi->featuredGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **title** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **content** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
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

[**List<Featured>**](Featured.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **featuredPatch**
> featuredPatch(id, title, description, imageUrl, content, establishmentId, createdAt, updatedAt, prefer, featured)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = FeaturedApi();
final id = id_example; // String | 
final title = title_example; // String | 
final description = description_example; // String | 
final imageUrl = imageUrl_example; // String | 
final content = content_example; // String | 
final establishmentId = establishmentId_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference
final featured = Featured(); // Featured | featured

try {
    api_instance.featuredPatch(id, title, description, imageUrl, content, establishmentId, createdAt, updatedAt, prefer, featured);
} catch (e) {
    print('Exception when calling FeaturedApi->featuredPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **title** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **content** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **updatedAt** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **featured** | [**Featured**](Featured.md)| featured | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **featuredPost**
> featuredPost(select, prefer, featured)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = FeaturedApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final featured = Featured(); // Featured | featured

try {
    api_instance.featuredPost(select, prefer, featured);
} catch (e) {
    print('Exception when calling FeaturedApi->featuredPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **featured** | [**Featured**](Featured.md)| featured | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

