# openapi.api.MessageApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://poc-bar-app.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**messageDelete**](MessageApi.md#messagedelete) | **DELETE** /message | 
[**messageGet**](MessageApi.md#messageget) | **GET** /message | 
[**messagePatch**](MessageApi.md#messagepatch) | **PATCH** /message | 
[**messagePost**](MessageApi.md#messagepost) | **POST** /message | 


# **messageDelete**
> messageDelete(uuid, time, fromUserId, toUserId, body, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = MessageApi();
final uuid = uuid_example; // String | 
final time = time_example; // String | 
final fromUserId = fromUserId_example; // String | 
final toUserId = toUserId_example; // String | 
final body = body_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.messageDelete(uuid, time, fromUserId, toUserId, body, prefer);
} catch (e) {
    print('Exception when calling MessageApi->messageDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | [optional] 
 **time** | **String**|  | [optional] 
 **fromUserId** | **String**|  | [optional] 
 **toUserId** | **String**|  | [optional] 
 **body** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **messageGet**
> List<Message> messageGet(uuid, time, fromUserId, toUserId, body, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = MessageApi();
final uuid = uuid_example; // String | 
final time = time_example; // String | 
final fromUserId = fromUserId_example; // String | 
final toUserId = toUserId_example; // String | 
final body = body_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.messageGet(uuid, time, fromUserId, toUserId, body, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling MessageApi->messageGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | [optional] 
 **time** | **String**|  | [optional] 
 **fromUserId** | **String**|  | [optional] 
 **toUserId** | **String**|  | [optional] 
 **body** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<Message>**](Message.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **messagePatch**
> messagePatch(uuid, time, fromUserId, toUserId, body, prefer, message)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = MessageApi();
final uuid = uuid_example; // String | 
final time = time_example; // String | 
final fromUserId = fromUserId_example; // String | 
final toUserId = toUserId_example; // String | 
final body = body_example; // String | 
final prefer = prefer_example; // String | Preference
final message = Message(); // Message | message

try {
    api_instance.messagePatch(uuid, time, fromUserId, toUserId, body, prefer, message);
} catch (e) {
    print('Exception when calling MessageApi->messagePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | [optional] 
 **time** | **String**|  | [optional] 
 **fromUserId** | **String**|  | [optional] 
 **toUserId** | **String**|  | [optional] 
 **body** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **message** | [**Message**](Message.md)| message | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **messagePost**
> messagePost(select, prefer, message)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = MessageApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final message = Message(); // Message | message

try {
    api_instance.messagePost(select, prefer, message);
} catch (e) {
    print('Exception when calling MessageApi->messagePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **message** | [**Message**](Message.md)| message | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

