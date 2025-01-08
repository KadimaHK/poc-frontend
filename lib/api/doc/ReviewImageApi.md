# openapi.api.ReviewImageApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://poc-bar-app.com:80/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reviewImageDelete**](ReviewImageApi.md#reviewimagedelete) | **DELETE** /review_image | 
[**reviewImageGet**](ReviewImageApi.md#reviewimageget) | **GET** /review_image | 
[**reviewImagePatch**](ReviewImageApi.md#reviewimagepatch) | **PATCH** /review_image | 
[**reviewImagePost**](ReviewImageApi.md#reviewimagepost) | **POST** /review_image | 


# **reviewImageDelete**
> reviewImageDelete(id, reviewId, imageUrl, description, type, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = ReviewImageApi();
final id = id_example; // String | 
final reviewId = reviewId_example; // String | 
final imageUrl = imageUrl_example; // String | 
final description = description_example; // String | 
final type = type_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.reviewImageDelete(id, reviewId, imageUrl, description, type, prefer);
} catch (e) {
    print('Exception when calling ReviewImageApi->reviewImageDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **reviewId** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **type** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewImageGet**
> List<ReviewImage> reviewImageGet(id, reviewId, imageUrl, description, type, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = ReviewImageApi();
final id = id_example; // String | 
final reviewId = reviewId_example; // String | 
final imageUrl = imageUrl_example; // String | 
final description = description_example; // String | 
final type = type_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.reviewImageGet(id, reviewId, imageUrl, description, type, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling ReviewImageApi->reviewImageGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **reviewId** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **type** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<ReviewImage>**](ReviewImage.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewImagePatch**
> reviewImagePatch(id, reviewId, imageUrl, description, type, prefer, reviewImage)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = ReviewImageApi();
final id = id_example; // String | 
final reviewId = reviewId_example; // String | 
final imageUrl = imageUrl_example; // String | 
final description = description_example; // String | 
final type = type_example; // String | 
final prefer = prefer_example; // String | Preference
final reviewImage = ReviewImage(); // ReviewImage | review_image

try {
    api_instance.reviewImagePatch(id, reviewId, imageUrl, description, type, prefer, reviewImage);
} catch (e) {
    print('Exception when calling ReviewImageApi->reviewImagePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **reviewId** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **type** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **reviewImage** | [**ReviewImage**](ReviewImage.md)| review_image | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewImagePost**
> reviewImagePost(select, prefer, reviewImage)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = ReviewImageApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final reviewImage = ReviewImage(); // ReviewImage | review_image

try {
    api_instance.reviewImagePost(select, prefer, reviewImage);
} catch (e) {
    print('Exception when calling ReviewImageApi->reviewImagePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **reviewImage** | [**ReviewImage**](ReviewImage.md)| review_image | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

