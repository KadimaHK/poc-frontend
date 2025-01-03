# openapi.api.RpcLogoutApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://poc-bar-app.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rpcLogoutGet**](RpcLogoutApi.md#rpclogoutget) | **GET** /rpc/logout | Don't use this function with GET method, use POST method instead
[**rpcLogoutPost**](RpcLogoutApi.md#rpclogoutpost) | **POST** /rpc/logout | Don't use this function with GET method, use POST method instead


# **rpcLogoutGet**
> rpcLogoutGet()

Don't use this function with GET method, use POST method instead

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = RpcLogoutApi();

try {
    api_instance.rpcLogoutGet();
} catch (e) {
    print('Exception when calling RpcLogoutApi->rpcLogoutGet: $e\n');
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

# **rpcLogoutPost**
> rpcLogoutPost(args, prefer)

Don't use this function with GET method, use POST method instead

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = RpcLogoutApi();
final args = Object(); // Object | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.rpcLogoutPost(args, prefer);
} catch (e) {
    print('Exception when calling RpcLogoutApi->rpcLogoutPost: $e\n');
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

