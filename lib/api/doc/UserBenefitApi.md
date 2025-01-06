# openapi.api.UserBenefitApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://poc-bar-app.com:80/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userBenefitDelete**](UserBenefitApi.md#userbenefitdelete) | **DELETE** /user_benefit | 
[**userBenefitGet**](UserBenefitApi.md#userbenefitget) | **GET** /user_benefit | 
[**userBenefitPatch**](UserBenefitApi.md#userbenefitpatch) | **PATCH** /user_benefit | 
[**userBenefitPost**](UserBenefitApi.md#userbenefitpost) | **POST** /user_benefit | 


# **userBenefitDelete**
> userBenefitDelete(userId, benefitId, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserBenefitApi();
final userId = userId_example; // String | 
final benefitId = benefitId_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.userBenefitDelete(userId, benefitId, prefer);
} catch (e) {
    print('Exception when calling UserBenefitApi->userBenefitDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **benefitId** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userBenefitGet**
> List<UserBenefit> userBenefitGet(userId, benefitId, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserBenefitApi();
final userId = userId_example; // String | 
final benefitId = benefitId_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.userBenefitGet(userId, benefitId, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling UserBenefitApi->userBenefitGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **benefitId** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<UserBenefit>**](UserBenefit.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userBenefitPatch**
> userBenefitPatch(userId, benefitId, prefer, userBenefit)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserBenefitApi();
final userId = userId_example; // String | 
final benefitId = benefitId_example; // String | 
final prefer = prefer_example; // String | Preference
final userBenefit = UserBenefit(); // UserBenefit | user_benefit

try {
    api_instance.userBenefitPatch(userId, benefitId, prefer, userBenefit);
} catch (e) {
    print('Exception when calling UserBenefitApi->userBenefitPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **benefitId** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **userBenefit** | [**UserBenefit**](UserBenefit.md)| user_benefit | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userBenefitPost**
> userBenefitPost(select, prefer, userBenefit)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserBenefitApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final userBenefit = UserBenefit(); // UserBenefit | user_benefit

try {
    api_instance.userBenefitPost(select, prefer, userBenefit);
} catch (e) {
    print('Exception when calling UserBenefitApi->userBenefitPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **userBenefit** | [**UserBenefit**](UserBenefit.md)| user_benefit | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

