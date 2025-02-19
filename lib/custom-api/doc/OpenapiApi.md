# openapi.api.OpenapiApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.50.81:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rootGet**](OpenapiApi.md#rootget) | **GET** / | Get OpenAPI schema


# **rootGet**
> String rootGet()

Get OpenAPI schema

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api_instance = OpenapiApi();

try {
    final result = api_instance.rootGet();
    print(result);
} catch (e) {
    print('Exception when calling OpenapiApi->rootGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[session](../README.md#session)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

