# openapi.api.RpcLoginApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://poc-bar-app.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rpcLoginGet**](RpcLoginApi.md#rpcloginget) | **GET** /rpc/login | Don't use this function with GET method, use POST method instead
[**rpcLoginPost**](RpcLoginApi.md#rpcloginpost) | **POST** /rpc/login | Don't use this function with GET method, use POST method instead


# **rpcLoginGet**
> rpcLoginGet()

Don't use this function with GET method, use POST method instead

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = RpcLoginApi();

try {
    api_instance.rpcLoginGet();
} catch (e) {
    print('Exception when calling RpcLoginApi->rpcLoginGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rpcLoginPost**
> rpcLoginPost(args, prefer)

Don't use this function with GET method, use POST method instead

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = RpcLoginApi();
final args = Object(); // Object | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.rpcLoginPost(args, prefer);
} catch (e) {
    print('Exception when calling RpcLoginApi->rpcLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **args** | **Object**|  | 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

