# openapi.api.EstablishmentOpeningHoursApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://192.168.50.81:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**establishmentOpeningHoursDelete**](EstablishmentOpeningHoursApi.md#establishmentopeninghoursdelete) | **DELETE** /establishment_opening_hours | 
[**establishmentOpeningHoursGet**](EstablishmentOpeningHoursApi.md#establishmentopeninghoursget) | **GET** /establishment_opening_hours | 
[**establishmentOpeningHoursPatch**](EstablishmentOpeningHoursApi.md#establishmentopeninghourspatch) | **PATCH** /establishment_opening_hours | 
[**establishmentOpeningHoursPost**](EstablishmentOpeningHoursApi.md#establishmentopeninghourspost) | **POST** /establishment_opening_hours | 


# **establishmentOpeningHoursDelete**
> establishmentOpeningHoursDelete(establishmentId, day, openTime, closeTime, isOvernight, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentOpeningHoursApi();
final establishmentId = establishmentId_example; // String | 
final day = day_example; // String | 
final openTime = openTime_example; // String | 
final closeTime = closeTime_example; // String | 
final isOvernight = isOvernight_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.establishmentOpeningHoursDelete(establishmentId, day, openTime, closeTime, isOvernight, prefer);
} catch (e) {
    print('Exception when calling EstablishmentOpeningHoursApi->establishmentOpeningHoursDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | [optional] 
 **day** | **String**|  | [optional] 
 **openTime** | **String**|  | [optional] 
 **closeTime** | **String**|  | [optional] 
 **isOvernight** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentOpeningHoursGet**
> List<EstablishmentOpeningHours> establishmentOpeningHoursGet(establishmentId, day, openTime, closeTime, isOvernight, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentOpeningHoursApi();
final establishmentId = establishmentId_example; // String | 
final day = day_example; // String | 
final openTime = openTime_example; // String | 
final closeTime = closeTime_example; // String | 
final isOvernight = isOvernight_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.establishmentOpeningHoursGet(establishmentId, day, openTime, closeTime, isOvernight, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling EstablishmentOpeningHoursApi->establishmentOpeningHoursGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | [optional] 
 **day** | **String**|  | [optional] 
 **openTime** | **String**|  | [optional] 
 **closeTime** | **String**|  | [optional] 
 **isOvernight** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<EstablishmentOpeningHours>**](EstablishmentOpeningHours.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentOpeningHoursPatch**
> establishmentOpeningHoursPatch(establishmentId, day, openTime, closeTime, isOvernight, prefer, establishmentOpeningHours)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentOpeningHoursApi();
final establishmentId = establishmentId_example; // String | 
final day = day_example; // String | 
final openTime = openTime_example; // String | 
final closeTime = closeTime_example; // String | 
final isOvernight = isOvernight_example; // String | 
final prefer = prefer_example; // String | Preference
final establishmentOpeningHours = EstablishmentOpeningHours(); // EstablishmentOpeningHours | establishment_opening_hours

try {
    api_instance.establishmentOpeningHoursPatch(establishmentId, day, openTime, closeTime, isOvernight, prefer, establishmentOpeningHours);
} catch (e) {
    print('Exception when calling EstablishmentOpeningHoursApi->establishmentOpeningHoursPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | [optional] 
 **day** | **String**|  | [optional] 
 **openTime** | **String**|  | [optional] 
 **closeTime** | **String**|  | [optional] 
 **isOvernight** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **establishmentOpeningHours** | [**EstablishmentOpeningHours**](EstablishmentOpeningHours.md)| establishment_opening_hours | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentOpeningHoursPost**
> establishmentOpeningHoursPost(select, prefer, establishmentOpeningHours)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentOpeningHoursApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final establishmentOpeningHours = EstablishmentOpeningHours(); // EstablishmentOpeningHours | establishment_opening_hours

try {
    api_instance.establishmentOpeningHoursPost(select, prefer, establishmentOpeningHours);
} catch (e) {
    print('Exception when calling EstablishmentOpeningHoursApi->establishmentOpeningHoursPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **establishmentOpeningHours** | [**EstablishmentOpeningHours**](EstablishmentOpeningHours.md)| establishment_opening_hours | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

