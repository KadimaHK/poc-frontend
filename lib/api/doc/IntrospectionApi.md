# openapi.api.IntrospectionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.1.2:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rootGet**](IntrospectionApi.md#rootget) | **GET** / | OpenAPI description (this document)


# **rootGet**
> rootGet()

OpenAPI description (this document)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = IntrospectionApi();

try {
    api_instance.rootGet();
} catch (e) {
    print('Exception when calling IntrospectionApi->rootGet: $e\n');
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

