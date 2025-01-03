# openapi.api.BenefitApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://poc-bar-app.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**benefitDelete**](BenefitApi.md#benefitdelete) | **DELETE** /benefit | 
[**benefitGet**](BenefitApi.md#benefitget) | **GET** /benefit | 
[**benefitPatch**](BenefitApi.md#benefitpatch) | **PATCH** /benefit | 
[**benefitPost**](BenefitApi.md#benefitpost) | **POST** /benefit | 


# **benefitDelete**
> benefitDelete(id, name, description, createdAt, updatedAt, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = BenefitApi();
final id = id_example; // String | 
final name = name_example; // String | 
final description = description_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.benefitDelete(id, name, description, createdAt, updatedAt, prefer);
} catch (e) {
    print('Exception when calling BenefitApi->benefitDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
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

# **benefitGet**
> List<Benefit> benefitGet(id, name, description, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = BenefitApi();
final id = id_example; // String | 
final name = name_example; // String | 
final description = description_example; // String | 
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
    final result = api_instance.benefitGet(id, name, description, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling BenefitApi->benefitGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
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

[**List<Benefit>**](Benefit.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **benefitPatch**
> benefitPatch(id, name, description, createdAt, updatedAt, prefer, benefit)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = BenefitApi();
final id = id_example; // String | 
final name = name_example; // String | 
final description = description_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference
final benefit = Benefit(); // Benefit | benefit

try {
    api_instance.benefitPatch(id, name, description, createdAt, updatedAt, prefer, benefit);
} catch (e) {
    print('Exception when calling BenefitApi->benefitPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **updatedAt** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **benefit** | [**Benefit**](Benefit.md)| benefit | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **benefitPost**
> benefitPost(select, prefer, benefit)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = BenefitApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final benefit = Benefit(); // Benefit | benefit

try {
    api_instance.benefitPost(select, prefer, benefit);
} catch (e) {
    print('Exception when calling BenefitApi->benefitPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **benefit** | [**Benefit**](Benefit.md)| benefit | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

