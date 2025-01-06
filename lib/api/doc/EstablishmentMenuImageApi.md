# openapi.api.EstablishmentMenuImageApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://poc-bar-app.com:80/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**establishmentMenuImageDelete**](EstablishmentMenuImageApi.md#establishmentmenuimagedelete) | **DELETE** /establishment_menu_image | 
[**establishmentMenuImageGet**](EstablishmentMenuImageApi.md#establishmentmenuimageget) | **GET** /establishment_menu_image | 
[**establishmentMenuImagePatch**](EstablishmentMenuImageApi.md#establishmentmenuimagepatch) | **PATCH** /establishment_menu_image | 
[**establishmentMenuImagePost**](EstablishmentMenuImageApi.md#establishmentmenuimagepost) | **POST** /establishment_menu_image | 


# **establishmentMenuImageDelete**
> establishmentMenuImageDelete(establishmentMenuId, imageUrl, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentMenuImageApi();
final establishmentMenuId = establishmentMenuId_example; // String | 
final imageUrl = imageUrl_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.establishmentMenuImageDelete(establishmentMenuId, imageUrl, prefer);
} catch (e) {
    print('Exception when calling EstablishmentMenuImageApi->establishmentMenuImageDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentMenuId** | **String**|  | [optional] 
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

# **establishmentMenuImageGet**
> List<EstablishmentMenuImage> establishmentMenuImageGet(establishmentMenuId, imageUrl, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentMenuImageApi();
final establishmentMenuId = establishmentMenuId_example; // String | 
final imageUrl = imageUrl_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.establishmentMenuImageGet(establishmentMenuId, imageUrl, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling EstablishmentMenuImageApi->establishmentMenuImageGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentMenuId** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<EstablishmentMenuImage>**](EstablishmentMenuImage.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentMenuImagePatch**
> establishmentMenuImagePatch(establishmentMenuId, imageUrl, prefer, establishmentMenuImage)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentMenuImageApi();
final establishmentMenuId = establishmentMenuId_example; // String | 
final imageUrl = imageUrl_example; // String | 
final prefer = prefer_example; // String | Preference
final establishmentMenuImage = EstablishmentMenuImage(); // EstablishmentMenuImage | establishment_menu_image

try {
    api_instance.establishmentMenuImagePatch(establishmentMenuId, imageUrl, prefer, establishmentMenuImage);
} catch (e) {
    print('Exception when calling EstablishmentMenuImageApi->establishmentMenuImagePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentMenuId** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **establishmentMenuImage** | [**EstablishmentMenuImage**](EstablishmentMenuImage.md)| establishment_menu_image | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentMenuImagePost**
> establishmentMenuImagePost(select, prefer, establishmentMenuImage)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentMenuImageApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final establishmentMenuImage = EstablishmentMenuImage(); // EstablishmentMenuImage | establishment_menu_image

try {
    api_instance.establishmentMenuImagePost(select, prefer, establishmentMenuImage);
} catch (e) {
    print('Exception when calling EstablishmentMenuImageApi->establishmentMenuImagePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **establishmentMenuImage** | [**EstablishmentMenuImage**](EstablishmentMenuImage.md)| establishment_menu_image | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

