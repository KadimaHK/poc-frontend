# openapi.api.PickEstablishmentApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://192.168.50.81:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pickEstablishmentDelete**](PickEstablishmentApi.md#pickestablishmentdelete) | **DELETE** /pick_establishment | 
[**pickEstablishmentGet**](PickEstablishmentApi.md#pickestablishmentget) | **GET** /pick_establishment | 
[**pickEstablishmentPatch**](PickEstablishmentApi.md#pickestablishmentpatch) | **PATCH** /pick_establishment | 
[**pickEstablishmentPost**](PickEstablishmentApi.md#pickestablishmentpost) | **POST** /pick_establishment | 


# **pickEstablishmentDelete**
> pickEstablishmentDelete(pickId, establishmentId, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = PickEstablishmentApi();
final pickId = pickId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.pickEstablishmentDelete(pickId, establishmentId, prefer);
} catch (e) {
    print('Exception when calling PickEstablishmentApi->pickEstablishmentDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pickId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pickEstablishmentGet**
> List<PickEstablishment> pickEstablishmentGet(pickId, establishmentId, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = PickEstablishmentApi();
final pickId = pickId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.pickEstablishmentGet(pickId, establishmentId, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling PickEstablishmentApi->pickEstablishmentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pickId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<PickEstablishment>**](PickEstablishment.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pickEstablishmentPatch**
> pickEstablishmentPatch(pickId, establishmentId, prefer, pickEstablishment)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = PickEstablishmentApi();
final pickId = pickId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final prefer = prefer_example; // String | Preference
final pickEstablishment = PickEstablishment(); // PickEstablishment | pick_establishment

try {
    api_instance.pickEstablishmentPatch(pickId, establishmentId, prefer, pickEstablishment);
} catch (e) {
    print('Exception when calling PickEstablishmentApi->pickEstablishmentPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pickId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **pickEstablishment** | [**PickEstablishment**](PickEstablishment.md)| pick_establishment | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pickEstablishmentPost**
> pickEstablishmentPost(select, prefer, pickEstablishment)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = PickEstablishmentApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final pickEstablishment = PickEstablishment(); // PickEstablishment | pick_establishment

try {
    api_instance.pickEstablishmentPost(select, prefer, pickEstablishment);
} catch (e) {
    print('Exception when calling PickEstablishmentApi->pickEstablishmentPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **pickEstablishment** | [**PickEstablishment**](PickEstablishment.md)| pick_establishment | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

