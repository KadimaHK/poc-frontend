# openapi.api.StoredLiqueurImageApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://poc-bar-app.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**storedLiqueurImageDelete**](StoredLiqueurImageApi.md#storedliqueurimagedelete) | **DELETE** /stored_liqueur_image | 
[**storedLiqueurImageGet**](StoredLiqueurImageApi.md#storedliqueurimageget) | **GET** /stored_liqueur_image | 
[**storedLiqueurImagePatch**](StoredLiqueurImageApi.md#storedliqueurimagepatch) | **PATCH** /stored_liqueur_image | 
[**storedLiqueurImagePost**](StoredLiqueurImageApi.md#storedliqueurimagepost) | **POST** /stored_liqueur_image | 


# **storedLiqueurImageDelete**
> storedLiqueurImageDelete(storedLiqueurId, imageUrl, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = StoredLiqueurImageApi();
final storedLiqueurId = storedLiqueurId_example; // String | 
final imageUrl = imageUrl_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.storedLiqueurImageDelete(storedLiqueurId, imageUrl, prefer);
} catch (e) {
    print('Exception when calling StoredLiqueurImageApi->storedLiqueurImageDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storedLiqueurId** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storedLiqueurImageGet**
> List<StoredLiqueurImage> storedLiqueurImageGet(storedLiqueurId, imageUrl, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = StoredLiqueurImageApi();
final storedLiqueurId = storedLiqueurId_example; // String | 
final imageUrl = imageUrl_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.storedLiqueurImageGet(storedLiqueurId, imageUrl, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling StoredLiqueurImageApi->storedLiqueurImageGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storedLiqueurId** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<StoredLiqueurImage>**](StoredLiqueurImage.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storedLiqueurImagePatch**
> storedLiqueurImagePatch(storedLiqueurId, imageUrl, prefer, storedLiqueurImage)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = StoredLiqueurImageApi();
final storedLiqueurId = storedLiqueurId_example; // String | 
final imageUrl = imageUrl_example; // String | 
final prefer = prefer_example; // String | Preference
final storedLiqueurImage = StoredLiqueurImage(); // StoredLiqueurImage | stored_liqueur_image

try {
    api_instance.storedLiqueurImagePatch(storedLiqueurId, imageUrl, prefer, storedLiqueurImage);
} catch (e) {
    print('Exception when calling StoredLiqueurImageApi->storedLiqueurImagePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storedLiqueurId** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **storedLiqueurImage** | [**StoredLiqueurImage**](StoredLiqueurImage.md)| stored_liqueur_image | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storedLiqueurImagePost**
> storedLiqueurImagePost(select, prefer, storedLiqueurImage)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = StoredLiqueurImageApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final storedLiqueurImage = StoredLiqueurImage(); // StoredLiqueurImage | stored_liqueur_image

try {
    api_instance.storedLiqueurImagePost(select, prefer, storedLiqueurImage);
} catch (e) {
    print('Exception when calling StoredLiqueurImageApi->storedLiqueurImagePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **storedLiqueurImage** | [**StoredLiqueurImage**](StoredLiqueurImage.md)| stored_liqueur_image | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

