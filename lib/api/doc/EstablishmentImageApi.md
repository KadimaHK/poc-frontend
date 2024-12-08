# openapi.api.EstablishmentImageApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.1.2:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**establishmentImageDelete**](EstablishmentImageApi.md#establishmentimagedelete) | **DELETE** /establishment_image | 
[**establishmentImageGet**](EstablishmentImageApi.md#establishmentimageget) | **GET** /establishment_image | 
[**establishmentImagePatch**](EstablishmentImageApi.md#establishmentimagepatch) | **PATCH** /establishment_image | 
[**establishmentImagePost**](EstablishmentImageApi.md#establishmentimagepost) | **POST** /establishment_image | 


# **establishmentImageDelete**
> establishmentImageDelete(establishmentId, imageUrl, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentImageApi();
final establishmentId = establishmentId_example; // String | 
final imageUrl = imageUrl_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.establishmentImageDelete(establishmentId, imageUrl, prefer);
} catch (e) {
    print('Exception when calling EstablishmentImageApi->establishmentImageDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | [optional] 
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

# **establishmentImageGet**
> List<EstablishmentImage> establishmentImageGet(establishmentId, imageUrl, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentImageApi();
final establishmentId = establishmentId_example; // String | 
final imageUrl = imageUrl_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.establishmentImageGet(establishmentId, imageUrl, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling EstablishmentImageApi->establishmentImageGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<EstablishmentImage>**](EstablishmentImage.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentImagePatch**
> establishmentImagePatch(establishmentId, imageUrl, prefer, establishmentImage)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentImageApi();
final establishmentId = establishmentId_example; // String | 
final imageUrl = imageUrl_example; // String | 
final prefer = prefer_example; // String | Preference
final establishmentImage = EstablishmentImage(); // EstablishmentImage | establishment_image

try {
    api_instance.establishmentImagePatch(establishmentId, imageUrl, prefer, establishmentImage);
} catch (e) {
    print('Exception when calling EstablishmentImageApi->establishmentImagePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **establishmentImage** | [**EstablishmentImage**](EstablishmentImage.md)| establishment_image | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentImagePost**
> establishmentImagePost(select, prefer, establishmentImage)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentImageApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final establishmentImage = EstablishmentImage(); // EstablishmentImage | establishment_image

try {
    api_instance.establishmentImagePost(select, prefer, establishmentImage);
} catch (e) {
    print('Exception when calling EstablishmentImageApi->establishmentImagePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **establishmentImage** | [**EstablishmentImage**](EstablishmentImage.md)| establishment_image | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

