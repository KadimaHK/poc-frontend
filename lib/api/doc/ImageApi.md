# openapi.api.ImageApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://poc-bar-app.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imageDelete**](ImageApi.md#imagedelete) | **DELETE** /image | Don't use this api to upload images, use the gin api instead
[**imageGet**](ImageApi.md#imageget) | **GET** /image | Don't use this api to upload images, use the gin api instead
[**imagePatch**](ImageApi.md#imagepatch) | **PATCH** /image | Don't use this api to upload images, use the gin api instead
[**imagePost**](ImageApi.md#imagepost) | **POST** /image | Don't use this api to upload images, use the gin api instead


# **imageDelete**
> imageDelete(fileName, baseUrl, imageUrl, likes, createdAt, updatedAt, prefer)

Don't use this api to upload images, use the gin api instead

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = ImageApi();
final fileName = fileName_example; // String | 
final baseUrl = baseUrl_example; // String | 
final imageUrl = imageUrl_example; // String | 
final likes = likes_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.imageDelete(fileName, baseUrl, imageUrl, likes, createdAt, updatedAt, prefer);
} catch (e) {
    print('Exception when calling ImageApi->imageDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileName** | **String**|  | [optional] 
 **baseUrl** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **likes** | **String**|  | [optional] 
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

# **imageGet**
> List<Image> imageGet(fileName, baseUrl, imageUrl, likes, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer)

Don't use this api to upload images, use the gin api instead

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = ImageApi();
final fileName = fileName_example; // String | 
final baseUrl = baseUrl_example; // String | 
final imageUrl = imageUrl_example; // String | 
final likes = likes_example; // String | 
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
    final result = api_instance.imageGet(fileName, baseUrl, imageUrl, likes, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling ImageApi->imageGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileName** | **String**|  | [optional] 
 **baseUrl** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **likes** | **String**|  | [optional] 
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

[**List<Image>**](Image.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imagePatch**
> imagePatch(fileName, baseUrl, imageUrl, likes, createdAt, updatedAt, prefer, image)

Don't use this api to upload images, use the gin api instead

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = ImageApi();
final fileName = fileName_example; // String | 
final baseUrl = baseUrl_example; // String | 
final imageUrl = imageUrl_example; // String | 
final likes = likes_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference
final image = Image(); // Image | image

try {
    api_instance.imagePatch(fileName, baseUrl, imageUrl, likes, createdAt, updatedAt, prefer, image);
} catch (e) {
    print('Exception when calling ImageApi->imagePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileName** | **String**|  | [optional] 
 **baseUrl** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **likes** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **updatedAt** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **image** | [**Image**](Image.md)| image | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imagePost**
> imagePost(select, prefer, image)

Don't use this api to upload images, use the gin api instead

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = ImageApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final image = Image(); // Image | image

try {
    api_instance.imagePost(select, prefer, image);
} catch (e) {
    print('Exception when calling ImageApi->imagePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **image** | [**Image**](Image.md)| image | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

