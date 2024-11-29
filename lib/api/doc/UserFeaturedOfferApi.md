# openapi.api.UserFeaturedOfferApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.50.79:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userFeaturedOfferDelete**](UserFeaturedOfferApi.md#userfeaturedofferdelete) | **DELETE** /user_featured_offer | 
[**userFeaturedOfferGet**](UserFeaturedOfferApi.md#userfeaturedofferget) | **GET** /user_featured_offer | 
[**userFeaturedOfferPatch**](UserFeaturedOfferApi.md#userfeaturedofferpatch) | **PATCH** /user_featured_offer | 
[**userFeaturedOfferPost**](UserFeaturedOfferApi.md#userfeaturedofferpost) | **POST** /user_featured_offer | 


# **userFeaturedOfferDelete**
> userFeaturedOfferDelete(userId, featuredOfferId, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserFeaturedOfferApi();
final userId = userId_example; // String | 
final featuredOfferId = featuredOfferId_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.userFeaturedOfferDelete(userId, featuredOfferId, prefer);
} catch (e) {
    print('Exception when calling UserFeaturedOfferApi->userFeaturedOfferDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **featuredOfferId** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userFeaturedOfferGet**
> List<UserFeaturedOffer> userFeaturedOfferGet(userId, featuredOfferId, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserFeaturedOfferApi();
final userId = userId_example; // String | 
final featuredOfferId = featuredOfferId_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.userFeaturedOfferGet(userId, featuredOfferId, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling UserFeaturedOfferApi->userFeaturedOfferGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **featuredOfferId** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<UserFeaturedOffer>**](UserFeaturedOffer.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userFeaturedOfferPatch**
> userFeaturedOfferPatch(userId, featuredOfferId, prefer, userFeaturedOffer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserFeaturedOfferApi();
final userId = userId_example; // String | 
final featuredOfferId = featuredOfferId_example; // String | 
final prefer = prefer_example; // String | Preference
final userFeaturedOffer = UserFeaturedOffer(); // UserFeaturedOffer | user_featured_offer

try {
    api_instance.userFeaturedOfferPatch(userId, featuredOfferId, prefer, userFeaturedOffer);
} catch (e) {
    print('Exception when calling UserFeaturedOfferApi->userFeaturedOfferPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **featuredOfferId** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **userFeaturedOffer** | [**UserFeaturedOffer**](UserFeaturedOffer.md)| user_featured_offer | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userFeaturedOfferPost**
> userFeaturedOfferPost(select, prefer, userFeaturedOffer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserFeaturedOfferApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final userFeaturedOffer = UserFeaturedOffer(); // UserFeaturedOffer | user_featured_offer

try {
    api_instance.userFeaturedOfferPost(select, prefer, userFeaturedOffer);
} catch (e) {
    print('Exception when calling UserFeaturedOfferApi->userFeaturedOfferPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **userFeaturedOffer** | [**UserFeaturedOffer**](UserFeaturedOffer.md)| user_featured_offer | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

