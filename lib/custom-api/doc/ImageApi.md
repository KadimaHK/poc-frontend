# openapi.api.ImageApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.50.81:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imageDelete**](ImageApi.md#imagedelete) | **DELETE** /image | Delete image
[**imagePost**](ImageApi.md#imagepost) | **POST** /image | Upload image


# **imageDelete**
> Image imageDelete(id)

Delete image

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api_instance = ImageApi();
final id = id_example; // String | 

try {
    final result = api_instance.imageDelete(id);
    print(result);
} catch (e) {
    print('Exception when calling ImageApi->imageDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Image**](Image.md)

### Authorization

[session](../README.md#session)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imagePost**
> Image imagePost(file)

Upload image

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api_instance = ImageApi();
final file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final result = api_instance.imagePost(file);
    print(result);
} catch (e) {
    print('Exception when calling ImageApi->imagePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**|  | [optional] 

### Return type

[**Image**](Image.md)

### Authorization

[session](../README.md#session)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

