# openapi.api.UserReviewLikeApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://poc-bar-app.com:80/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userReviewLikeDelete**](UserReviewLikeApi.md#userreviewlikedelete) | **DELETE** /user_review_like | 
[**userReviewLikeGet**](UserReviewLikeApi.md#userreviewlikeget) | **GET** /user_review_like | 
[**userReviewLikePatch**](UserReviewLikeApi.md#userreviewlikepatch) | **PATCH** /user_review_like | 
[**userReviewLikePost**](UserReviewLikeApi.md#userreviewlikepost) | **POST** /user_review_like | 


# **userReviewLikeDelete**
> userReviewLikeDelete(userId, reviewId, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserReviewLikeApi();
final userId = userId_example; // String | 
final reviewId = reviewId_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.userReviewLikeDelete(userId, reviewId, prefer);
} catch (e) {
    print('Exception when calling UserReviewLikeApi->userReviewLikeDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **reviewId** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userReviewLikeGet**
> List<UserReviewLike> userReviewLikeGet(userId, reviewId, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserReviewLikeApi();
final userId = userId_example; // String | 
final reviewId = reviewId_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.userReviewLikeGet(userId, reviewId, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling UserReviewLikeApi->userReviewLikeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **reviewId** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<UserReviewLike>**](UserReviewLike.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userReviewLikePatch**
> userReviewLikePatch(userId, reviewId, prefer, userReviewLike)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserReviewLikeApi();
final userId = userId_example; // String | 
final reviewId = reviewId_example; // String | 
final prefer = prefer_example; // String | Preference
final userReviewLike = UserReviewLike(); // UserReviewLike | user_review_like

try {
    api_instance.userReviewLikePatch(userId, reviewId, prefer, userReviewLike);
} catch (e) {
    print('Exception when calling UserReviewLikeApi->userReviewLikePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **reviewId** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **userReviewLike** | [**UserReviewLike**](UserReviewLike.md)| user_review_like | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userReviewLikePost**
> userReviewLikePost(select, prefer, userReviewLike)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserReviewLikeApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final userReviewLike = UserReviewLike(); // UserReviewLike | user_review_like

try {
    api_instance.userReviewLikePost(select, prefer, userReviewLike);
} catch (e) {
    print('Exception when calling UserReviewLikeApi->userReviewLikePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **userReviewLike** | [**UserReviewLike**](UserReviewLike.md)| user_review_like | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

