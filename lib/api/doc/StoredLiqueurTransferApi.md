# openapi.api.StoredLiqueurTransferApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://poc-bar-app.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**storedLiqueurTransferDelete**](StoredLiqueurTransferApi.md#storedliqueurtransferdelete) | **DELETE** /stored_liqueur_transfer | 
[**storedLiqueurTransferGet**](StoredLiqueurTransferApi.md#storedliqueurtransferget) | **GET** /stored_liqueur_transfer | 
[**storedLiqueurTransferPatch**](StoredLiqueurTransferApi.md#storedliqueurtransferpatch) | **PATCH** /stored_liqueur_transfer | 
[**storedLiqueurTransferPost**](StoredLiqueurTransferApi.md#storedliqueurtransferpost) | **POST** /stored_liqueur_transfer | 


# **storedLiqueurTransferDelete**
> storedLiqueurTransferDelete(id, storedLiqueurId, fromUserId, toUserId, isAccepted, createdAt, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = StoredLiqueurTransferApi();
final id = id_example; // String | 
final storedLiqueurId = storedLiqueurId_example; // String | 
final fromUserId = fromUserId_example; // String | 
final toUserId = toUserId_example; // String | 
final isAccepted = isAccepted_example; // String | 
final createdAt = createdAt_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.storedLiqueurTransferDelete(id, storedLiqueurId, fromUserId, toUserId, isAccepted, createdAt, prefer);
} catch (e) {
    print('Exception when calling StoredLiqueurTransferApi->storedLiqueurTransferDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **storedLiqueurId** | **String**|  | [optional] 
 **fromUserId** | **String**|  | [optional] 
 **toUserId** | **String**|  | [optional] 
 **isAccepted** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storedLiqueurTransferGet**
> List<StoredLiqueurTransfer> storedLiqueurTransferGet(id, storedLiqueurId, fromUserId, toUserId, isAccepted, createdAt, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = StoredLiqueurTransferApi();
final id = id_example; // String | 
final storedLiqueurId = storedLiqueurId_example; // String | 
final fromUserId = fromUserId_example; // String | 
final toUserId = toUserId_example; // String | 
final isAccepted = isAccepted_example; // String | 
final createdAt = createdAt_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.storedLiqueurTransferGet(id, storedLiqueurId, fromUserId, toUserId, isAccepted, createdAt, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling StoredLiqueurTransferApi->storedLiqueurTransferGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **storedLiqueurId** | **String**|  | [optional] 
 **fromUserId** | **String**|  | [optional] 
 **toUserId** | **String**|  | [optional] 
 **isAccepted** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<StoredLiqueurTransfer>**](StoredLiqueurTransfer.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storedLiqueurTransferPatch**
> storedLiqueurTransferPatch(id, storedLiqueurId, fromUserId, toUserId, isAccepted, createdAt, prefer, storedLiqueurTransfer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = StoredLiqueurTransferApi();
final id = id_example; // String | 
final storedLiqueurId = storedLiqueurId_example; // String | 
final fromUserId = fromUserId_example; // String | 
final toUserId = toUserId_example; // String | 
final isAccepted = isAccepted_example; // String | 
final createdAt = createdAt_example; // String | 
final prefer = prefer_example; // String | Preference
final storedLiqueurTransfer = StoredLiqueurTransfer(); // StoredLiqueurTransfer | stored_liqueur_transfer

try {
    api_instance.storedLiqueurTransferPatch(id, storedLiqueurId, fromUserId, toUserId, isAccepted, createdAt, prefer, storedLiqueurTransfer);
} catch (e) {
    print('Exception when calling StoredLiqueurTransferApi->storedLiqueurTransferPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **storedLiqueurId** | **String**|  | [optional] 
 **fromUserId** | **String**|  | [optional] 
 **toUserId** | **String**|  | [optional] 
 **isAccepted** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **storedLiqueurTransfer** | [**StoredLiqueurTransfer**](StoredLiqueurTransfer.md)| stored_liqueur_transfer | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storedLiqueurTransferPost**
> storedLiqueurTransferPost(select, prefer, storedLiqueurTransfer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = StoredLiqueurTransferApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final storedLiqueurTransfer = StoredLiqueurTransfer(); // StoredLiqueurTransfer | stored_liqueur_transfer

try {
    api_instance.storedLiqueurTransferPost(select, prefer, storedLiqueurTransfer);
} catch (e) {
    print('Exception when calling StoredLiqueurTransferApi->storedLiqueurTransferPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **storedLiqueurTransfer** | [**StoredLiqueurTransfer**](StoredLiqueurTransfer.md)| stored_liqueur_transfer | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

