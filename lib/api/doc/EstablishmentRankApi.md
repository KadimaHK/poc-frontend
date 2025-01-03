# openapi.api.EstablishmentRankApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://poc-bar-app.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**establishmentRankDelete**](EstablishmentRankApi.md#establishmentrankdelete) | **DELETE** /establishment_rank | 
[**establishmentRankGet**](EstablishmentRankApi.md#establishmentrankget) | **GET** /establishment_rank | 
[**establishmentRankPatch**](EstablishmentRankApi.md#establishmentrankpatch) | **PATCH** /establishment_rank | 
[**establishmentRankPost**](EstablishmentRankApi.md#establishmentrankpost) | **POST** /establishment_rank | 


# **establishmentRankDelete**
> establishmentRankDelete(establishmentId, userId, rank, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentRankApi();
final establishmentId = establishmentId_example; // String | 
final userId = userId_example; // String | 
final rank = rank_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.establishmentRankDelete(establishmentId, userId, rank, prefer);
} catch (e) {
    print('Exception when calling EstablishmentRankApi->establishmentRankDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **rank** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentRankGet**
> List<EstablishmentRank> establishmentRankGet(establishmentId, userId, rank, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentRankApi();
final establishmentId = establishmentId_example; // String | 
final userId = userId_example; // String | 
final rank = rank_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.establishmentRankGet(establishmentId, userId, rank, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling EstablishmentRankApi->establishmentRankGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **rank** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<EstablishmentRank>**](EstablishmentRank.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentRankPatch**
> establishmentRankPatch(establishmentId, userId, rank, prefer, establishmentRank)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentRankApi();
final establishmentId = establishmentId_example; // String | 
final userId = userId_example; // String | 
final rank = rank_example; // String | 
final prefer = prefer_example; // String | Preference
final establishmentRank = EstablishmentRank(); // EstablishmentRank | establishment_rank

try {
    api_instance.establishmentRankPatch(establishmentId, userId, rank, prefer, establishmentRank);
} catch (e) {
    print('Exception when calling EstablishmentRankApi->establishmentRankPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **rank** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **establishmentRank** | [**EstablishmentRank**](EstablishmentRank.md)| establishment_rank | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentRankPost**
> establishmentRankPost(select, prefer, establishmentRank)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentRankApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final establishmentRank = EstablishmentRank(); // EstablishmentRank | establishment_rank

try {
    api_instance.establishmentRankPost(select, prefer, establishmentRank);
} catch (e) {
    print('Exception when calling EstablishmentRankApi->establishmentRankPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **establishmentRank** | [**EstablishmentRank**](EstablishmentRank.md)| establishment_rank | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

