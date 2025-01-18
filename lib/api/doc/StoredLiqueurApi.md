# openapi.api.StoredLiqueurApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://poc-bar-app.com:80/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**storedLiqueurDelete**](StoredLiqueurApi.md#storedliqueurdelete) | **DELETE** /stored_liqueur | 
[**storedLiqueurGet**](StoredLiqueurApi.md#storedliqueurget) | **GET** /stored_liqueur | 
[**storedLiqueurPatch**](StoredLiqueurApi.md#storedliqueurpatch) | **PATCH** /stored_liqueur | 
[**storedLiqueurPost**](StoredLiqueurApi.md#storedliqueurpost) | **POST** /stored_liqueur | 


# **storedLiqueurDelete**
> storedLiqueurDelete(id, userId, establishmentId, imageUrl, name, description, storedDate, expiryDate, isRedeemed, redeemCode, createdAt, updatedAt, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = StoredLiqueurApi();
final id = id_example; // String | 
final userId = userId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final imageUrl = imageUrl_example; // String | 
final name = name_example; // String | 
final description = description_example; // String | 
final storedDate = storedDate_example; // String | 
final expiryDate = expiryDate_example; // String | 
final isRedeemed = isRedeemed_example; // String | 
final redeemCode = redeemCode_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.storedLiqueurDelete(id, userId, establishmentId, imageUrl, name, description, storedDate, expiryDate, isRedeemed, redeemCode, createdAt, updatedAt, prefer);
} catch (e) {
    print('Exception when calling StoredLiqueurApi->storedLiqueurDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **storedDate** | **String**|  | [optional] 
 **expiryDate** | **String**|  | [optional] 
 **isRedeemed** | **String**|  | [optional] 
 **redeemCode** | **String**|  | [optional] 
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

# **storedLiqueurGet**
> List<StoredLiqueur> storedLiqueurGet(id, userId, establishmentId, imageUrl, name, description, storedDate, expiryDate, isRedeemed, redeemCode, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = StoredLiqueurApi();
final id = id_example; // String | 
final userId = userId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final imageUrl = imageUrl_example; // String | 
final name = name_example; // String | 
final description = description_example; // String | 
final storedDate = storedDate_example; // String | 
final expiryDate = expiryDate_example; // String | 
final isRedeemed = isRedeemed_example; // String | 
final redeemCode = redeemCode_example; // String | 
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
    final result = api_instance.storedLiqueurGet(id, userId, establishmentId, imageUrl, name, description, storedDate, expiryDate, isRedeemed, redeemCode, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling StoredLiqueurApi->storedLiqueurGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **storedDate** | **String**|  | [optional] 
 **expiryDate** | **String**|  | [optional] 
 **isRedeemed** | **String**|  | [optional] 
 **redeemCode** | **String**|  | [optional] 
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

[**List<StoredLiqueur>**](StoredLiqueur.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storedLiqueurPatch**
> storedLiqueurPatch(id, userId, establishmentId, imageUrl, name, description, storedDate, expiryDate, isRedeemed, redeemCode, createdAt, updatedAt, prefer, storedLiqueur)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = StoredLiqueurApi();
final id = id_example; // String | 
final userId = userId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final imageUrl = imageUrl_example; // String | 
final name = name_example; // String | 
final description = description_example; // String | 
final storedDate = storedDate_example; // String | 
final expiryDate = expiryDate_example; // String | 
final isRedeemed = isRedeemed_example; // String | 
final redeemCode = redeemCode_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference
final storedLiqueur = StoredLiqueur(); // StoredLiqueur | stored_liqueur

try {
    api_instance.storedLiqueurPatch(id, userId, establishmentId, imageUrl, name, description, storedDate, expiryDate, isRedeemed, redeemCode, createdAt, updatedAt, prefer, storedLiqueur);
} catch (e) {
    print('Exception when calling StoredLiqueurApi->storedLiqueurPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **storedDate** | **String**|  | [optional] 
 **expiryDate** | **String**|  | [optional] 
 **isRedeemed** | **String**|  | [optional] 
 **redeemCode** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **updatedAt** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **storedLiqueur** | [**StoredLiqueur**](StoredLiqueur.md)| stored_liqueur | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storedLiqueurPost**
> storedLiqueurPost(select, prefer, storedLiqueur)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = StoredLiqueurApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final storedLiqueur = StoredLiqueur(); // StoredLiqueur | stored_liqueur

try {
    api_instance.storedLiqueurPost(select, prefer, storedLiqueur);
} catch (e) {
    print('Exception when calling StoredLiqueurApi->storedLiqueurPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **storedLiqueur** | [**StoredLiqueur**](StoredLiqueur.md)| stored_liqueur | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

