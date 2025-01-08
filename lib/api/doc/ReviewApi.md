# openapi.api.ReviewApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://poc-bar-app.com:80/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reviewDelete**](ReviewApi.md#reviewdelete) | **DELETE** /review | 
[**reviewGet**](ReviewApi.md#reviewget) | **GET** /review | 
[**reviewPatch**](ReviewApi.md#reviewpatch) | **PATCH** /review | 
[**reviewPost**](ReviewApi.md#reviewpost) | **POST** /review | 


# **reviewDelete**
> reviewDelete(id, userId, establishmentId, title, description, content, isApproved, rating, tasteRating, decorRating, serviceRating, hygieneRating, valueRating, dateVisited, spend, likes, status, createdAt, updatedAt, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = ReviewApi();
final id = id_example; // String | 
final userId = userId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final title = title_example; // String | 
final description = description_example; // String | 
final content = content_example; // String | 
final isApproved = isApproved_example; // String | 
final rating = rating_example; // String | 
final tasteRating = tasteRating_example; // String | 
final decorRating = decorRating_example; // String | 
final serviceRating = serviceRating_example; // String | 
final hygieneRating = hygieneRating_example; // String | 
final valueRating = valueRating_example; // String | 
final dateVisited = dateVisited_example; // String | 
final spend = spend_example; // String | How much did the user spend in the establishment per person
final likes = likes_example; // String | 
final status = status_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.reviewDelete(id, userId, establishmentId, title, description, content, isApproved, rating, tasteRating, decorRating, serviceRating, hygieneRating, valueRating, dateVisited, spend, likes, status, createdAt, updatedAt, prefer);
} catch (e) {
    print('Exception when calling ReviewApi->reviewDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **title** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **content** | **String**|  | [optional] 
 **isApproved** | **String**|  | [optional] 
 **rating** | **String**|  | [optional] 
 **tasteRating** | **String**|  | [optional] 
 **decorRating** | **String**|  | [optional] 
 **serviceRating** | **String**|  | [optional] 
 **hygieneRating** | **String**|  | [optional] 
 **valueRating** | **String**|  | [optional] 
 **dateVisited** | **String**|  | [optional] 
 **spend** | **String**| How much did the user spend in the establishment per person | [optional] 
 **likes** | **String**|  | [optional] 
 **status** | **String**|  | [optional] 
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

# **reviewGet**
> List<Review> reviewGet(id, userId, establishmentId, title, description, content, isApproved, rating, tasteRating, decorRating, serviceRating, hygieneRating, valueRating, dateVisited, spend, likes, status, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = ReviewApi();
final id = id_example; // String | 
final userId = userId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final title = title_example; // String | 
final description = description_example; // String | 
final content = content_example; // String | 
final isApproved = isApproved_example; // String | 
final rating = rating_example; // String | 
final tasteRating = tasteRating_example; // String | 
final decorRating = decorRating_example; // String | 
final serviceRating = serviceRating_example; // String | 
final hygieneRating = hygieneRating_example; // String | 
final valueRating = valueRating_example; // String | 
final dateVisited = dateVisited_example; // String | 
final spend = spend_example; // String | How much did the user spend in the establishment per person
final likes = likes_example; // String | 
final status = status_example; // String | 
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
    final result = api_instance.reviewGet(id, userId, establishmentId, title, description, content, isApproved, rating, tasteRating, decorRating, serviceRating, hygieneRating, valueRating, dateVisited, spend, likes, status, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling ReviewApi->reviewGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **title** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **content** | **String**|  | [optional] 
 **isApproved** | **String**|  | [optional] 
 **rating** | **String**|  | [optional] 
 **tasteRating** | **String**|  | [optional] 
 **decorRating** | **String**|  | [optional] 
 **serviceRating** | **String**|  | [optional] 
 **hygieneRating** | **String**|  | [optional] 
 **valueRating** | **String**|  | [optional] 
 **dateVisited** | **String**|  | [optional] 
 **spend** | **String**| How much did the user spend in the establishment per person | [optional] 
 **likes** | **String**|  | [optional] 
 **status** | **String**|  | [optional] 
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

[**List<Review>**](Review.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewPatch**
> reviewPatch(id, userId, establishmentId, title, description, content, isApproved, rating, tasteRating, decorRating, serviceRating, hygieneRating, valueRating, dateVisited, spend, likes, status, createdAt, updatedAt, prefer, review)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = ReviewApi();
final id = id_example; // String | 
final userId = userId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final title = title_example; // String | 
final description = description_example; // String | 
final content = content_example; // String | 
final isApproved = isApproved_example; // String | 
final rating = rating_example; // String | 
final tasteRating = tasteRating_example; // String | 
final decorRating = decorRating_example; // String | 
final serviceRating = serviceRating_example; // String | 
final hygieneRating = hygieneRating_example; // String | 
final valueRating = valueRating_example; // String | 
final dateVisited = dateVisited_example; // String | 
final spend = spend_example; // String | How much did the user spend in the establishment per person
final likes = likes_example; // String | 
final status = status_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference
final review = Review(); // Review | review

try {
    api_instance.reviewPatch(id, userId, establishmentId, title, description, content, isApproved, rating, tasteRating, decorRating, serviceRating, hygieneRating, valueRating, dateVisited, spend, likes, status, createdAt, updatedAt, prefer, review);
} catch (e) {
    print('Exception when calling ReviewApi->reviewPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **title** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **content** | **String**|  | [optional] 
 **isApproved** | **String**|  | [optional] 
 **rating** | **String**|  | [optional] 
 **tasteRating** | **String**|  | [optional] 
 **decorRating** | **String**|  | [optional] 
 **serviceRating** | **String**|  | [optional] 
 **hygieneRating** | **String**|  | [optional] 
 **valueRating** | **String**|  | [optional] 
 **dateVisited** | **String**|  | [optional] 
 **spend** | **String**| How much did the user spend in the establishment per person | [optional] 
 **likes** | **String**|  | [optional] 
 **status** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **updatedAt** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **review** | [**Review**](Review.md)| review | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewPost**
> reviewPost(select, prefer, review)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = ReviewApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final review = Review(); // Review | review

try {
    api_instance.reviewPost(select, prefer, review);
} catch (e) {
    print('Exception when calling ReviewApi->reviewPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **review** | [**Review**](Review.md)| review | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

