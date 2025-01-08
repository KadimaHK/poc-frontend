# openapi.api.EstablishmentBenefitApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://poc-bar-app.com:80/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**establishmentBenefitDelete**](EstablishmentBenefitApi.md#establishmentbenefitdelete) | **DELETE** /establishment_benefit | 
[**establishmentBenefitGet**](EstablishmentBenefitApi.md#establishmentbenefitget) | **GET** /establishment_benefit | 
[**establishmentBenefitPatch**](EstablishmentBenefitApi.md#establishmentbenefitpatch) | **PATCH** /establishment_benefit | 
[**establishmentBenefitPost**](EstablishmentBenefitApi.md#establishmentbenefitpost) | **POST** /establishment_benefit | 


# **establishmentBenefitDelete**
> establishmentBenefitDelete(establishmentId, benefitId, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentBenefitApi();
final establishmentId = establishmentId_example; // String | 
final benefitId = benefitId_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.establishmentBenefitDelete(establishmentId, benefitId, prefer);
} catch (e) {
    print('Exception when calling EstablishmentBenefitApi->establishmentBenefitDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | [optional] 
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

# **establishmentBenefitGet**
> List<EstablishmentBenefit> establishmentBenefitGet(establishmentId, benefitId, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentBenefitApi();
final establishmentId = establishmentId_example; // String | 
final benefitId = benefitId_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.establishmentBenefitGet(establishmentId, benefitId, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling EstablishmentBenefitApi->establishmentBenefitGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | [optional] 
 **benefitId** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<EstablishmentBenefit>**](EstablishmentBenefit.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentBenefitPatch**
> establishmentBenefitPatch(establishmentId, benefitId, prefer, establishmentBenefit)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentBenefitApi();
final establishmentId = establishmentId_example; // String | 
final benefitId = benefitId_example; // String | 
final prefer = prefer_example; // String | Preference
final establishmentBenefit = EstablishmentBenefit(); // EstablishmentBenefit | establishment_benefit

try {
    api_instance.establishmentBenefitPatch(establishmentId, benefitId, prefer, establishmentBenefit);
} catch (e) {
    print('Exception when calling EstablishmentBenefitApi->establishmentBenefitPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | [optional] 
 **benefitId** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **establishmentBenefit** | [**EstablishmentBenefit**](EstablishmentBenefit.md)| establishment_benefit | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentBenefitPost**
> establishmentBenefitPost(select, prefer, establishmentBenefit)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentBenefitApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final establishmentBenefit = EstablishmentBenefit(); // EstablishmentBenefit | establishment_benefit

try {
    api_instance.establishmentBenefitPost(select, prefer, establishmentBenefit);
} catch (e) {
    print('Exception when calling EstablishmentBenefitApi->establishmentBenefitPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **establishmentBenefit** | [**EstablishmentBenefit**](EstablishmentBenefit.md)| establishment_benefit | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

