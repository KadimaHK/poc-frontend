# openapi.api.BookingApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.1.2:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bookingDelete**](BookingApi.md#bookingdelete) | **DELETE** /booking | 
[**bookingGet**](BookingApi.md#bookingget) | **GET** /booking | 
[**bookingPatch**](BookingApi.md#bookingpatch) | **PATCH** /booking | 
[**bookingPost**](BookingApi.md#bookingpost) | **POST** /booking | 


# **bookingDelete**
> bookingDelete(id, userId, establishmentId, reservationStart, reservationEnd, createdAt, updatedAt, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = BookingApi();
final id = id_example; // String | 
final userId = userId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final reservationStart = reservationStart_example; // String | 
final reservationEnd = reservationEnd_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.bookingDelete(id, userId, establishmentId, reservationStart, reservationEnd, createdAt, updatedAt, prefer);
} catch (e) {
    print('Exception when calling BookingApi->bookingDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **reservationStart** | **String**|  | [optional] 
 **reservationEnd** | **String**|  | [optional] 
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

# **bookingGet**
> List<Booking> bookingGet(id, userId, establishmentId, reservationStart, reservationEnd, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = BookingApi();
final id = id_example; // String | 
final userId = userId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final reservationStart = reservationStart_example; // String | 
final reservationEnd = reservationEnd_example; // String | 
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
    final result = api_instance.bookingGet(id, userId, establishmentId, reservationStart, reservationEnd, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling BookingApi->bookingGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **reservationStart** | **String**|  | [optional] 
 **reservationEnd** | **String**|  | [optional] 
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

[**List<Booking>**](Booking.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookingPatch**
> bookingPatch(id, userId, establishmentId, reservationStart, reservationEnd, createdAt, updatedAt, prefer, booking)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = BookingApi();
final id = id_example; // String | 
final userId = userId_example; // String | 
final establishmentId = establishmentId_example; // String | 
final reservationStart = reservationStart_example; // String | 
final reservationEnd = reservationEnd_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference
final booking = Booking(); // Booking | booking

try {
    api_instance.bookingPatch(id, userId, establishmentId, reservationStart, reservationEnd, createdAt, updatedAt, prefer, booking);
} catch (e) {
    print('Exception when calling BookingApi->bookingPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **reservationStart** | **String**|  | [optional] 
 **reservationEnd** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **updatedAt** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **booking** | [**Booking**](Booking.md)| booking | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookingPost**
> bookingPost(select, prefer, booking)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = BookingApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final booking = Booking(); // Booking | booking

try {
    api_instance.bookingPost(select, prefer, booking);
} catch (e) {
    print('Exception when calling BookingApi->bookingPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **booking** | [**Booking**](Booking.md)| booking | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

