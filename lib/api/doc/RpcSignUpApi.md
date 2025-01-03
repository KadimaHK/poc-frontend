# openapi.api.RpcSignUpApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://poc-bar-app.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rpcSignUpGet**](RpcSignUpApi.md#rpcsignupget) | **GET** /rpc/sign_up | Don't use this function with GET method, use POST method instead
[**rpcSignUpPost**](RpcSignUpApi.md#rpcsignuppost) | **POST** /rpc/sign_up | Don't use this function with GET method, use POST method instead


# **rpcSignUpGet**
> rpcSignUpGet(email, name, password)

Don't use this function with GET method, use POST method instead

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = RpcSignUpApi();
final email = email_example; // String | 
final name = name_example; // String | 
final password = password_example; // String | 

try {
    api_instance.rpcSignUpGet(email, name, password);
} catch (e) {
    print('Exception when calling RpcSignUpApi->rpcSignUpGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 
 **name** | **String**|  | 
 **password** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rpcSignUpPost**
> rpcSignUpPost(args, prefer)

Don't use this function with GET method, use POST method instead

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = RpcSignUpApi();
final args = RpcSignUpPostRequest(); // RpcSignUpPostRequest | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.rpcSignUpPost(args, prefer);
} catch (e) {
    print('Exception when calling RpcSignUpApi->rpcSignUpPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **args** | [**RpcSignUpPostRequest**](RpcSignUpPostRequest.md)|  | 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

