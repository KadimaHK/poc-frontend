# openapi.api.EstablishmentApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.50.79:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**establishmentDelete**](EstablishmentApi.md#establishmentdelete) | **DELETE** /establishment | 
[**establishmentGet**](EstablishmentApi.md#establishmentget) | **GET** /establishment | 
[**establishmentPatch**](EstablishmentApi.md#establishmentpatch) | **PATCH** /establishment | 
[**establishmentPost**](EstablishmentApi.md#establishmentpost) | **POST** /establishment | 


# **establishmentDelete**
> establishmentDelete(id, name, description, location, cordX, cordY, category, thumbnail, rank, bookingPoints, createdAt, updatedAt, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentApi();
final id = id_example; // String | 
final name = name_example; // String | 
final description = description_example; // String | 
final location = location_example; // String | 
final cordX = cordX_example; // String | 
final cordY = cordY_example; // String | 
final category = category_example; // String | 
final thumbnail = thumbnail_example; // String | 
final rank = rank_example; // String | Average rating of the establishment
final bookingPoints = bookingPoints_example; // String | How many points are a user earning by booking this establishment
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.establishmentDelete(id, name, description, location, cordX, cordY, category, thumbnail, rank, bookingPoints, createdAt, updatedAt, prefer);
} catch (e) {
    print('Exception when calling EstablishmentApi->establishmentDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **location** | **String**|  | [optional] 
 **cordX** | **String**|  | [optional] 
 **cordY** | **String**|  | [optional] 
 **category** | **String**|  | [optional] 
 **thumbnail** | **String**|  | [optional] 
 **rank** | **String**| Average rating of the establishment | [optional] 
 **bookingPoints** | **String**| How many points are a user earning by booking this establishment | [optional] 
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

# **establishmentGet**
> List<Establishment> establishmentGet(id, name, description, location, cordX, cordY, category, thumbnail, rank, bookingPoints, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentApi();
final id = id_example; // String | 
final name = name_example; // String | 
final description = description_example; // String | 
final location = location_example; // String | 
final cordX = cordX_example; // String | 
final cordY = cordY_example; // String | 
final category = category_example; // String | 
final thumbnail = thumbnail_example; // String | 
final rank = rank_example; // String | Average rating of the establishment
final bookingPoints = bookingPoints_example; // String | How many points are a user earning by booking this establishment
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
    final result = api_instance.establishmentGet(id, name, description, location, cordX, cordY, category, thumbnail, rank, bookingPoints, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling EstablishmentApi->establishmentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **location** | **String**|  | [optional] 
 **cordX** | **String**|  | [optional] 
 **cordY** | **String**|  | [optional] 
 **category** | **String**|  | [optional] 
 **thumbnail** | **String**|  | [optional] 
 **rank** | **String**| Average rating of the establishment | [optional] 
 **bookingPoints** | **String**| How many points are a user earning by booking this establishment | [optional] 
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

[**List<Establishment>**](Establishment.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentPatch**
> establishmentPatch(id, name, description, location, cordX, cordY, category, thumbnail, rank, bookingPoints, createdAt, updatedAt, prefer, establishment)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentApi();
final id = id_example; // String | 
final name = name_example; // String | 
final description = description_example; // String | 
final location = location_example; // String | 
final cordX = cordX_example; // String | 
final cordY = cordY_example; // String | 
final category = category_example; // String | 
final thumbnail = thumbnail_example; // String | 
final rank = rank_example; // String | Average rating of the establishment
final bookingPoints = bookingPoints_example; // String | How many points are a user earning by booking this establishment
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference
final establishment = Establishment(); // Establishment | establishment

try {
    api_instance.establishmentPatch(id, name, description, location, cordX, cordY, category, thumbnail, rank, bookingPoints, createdAt, updatedAt, prefer, establishment);
} catch (e) {
    print('Exception when calling EstablishmentApi->establishmentPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **location** | **String**|  | [optional] 
 **cordX** | **String**|  | [optional] 
 **cordY** | **String**|  | [optional] 
 **category** | **String**|  | [optional] 
 **thumbnail** | **String**|  | [optional] 
 **rank** | **String**| Average rating of the establishment | [optional] 
 **bookingPoints** | **String**| How many points are a user earning by booking this establishment | [optional] 
 **createdAt** | **String**|  | [optional] 
 **updatedAt** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **establishment** | [**Establishment**](Establishment.md)| establishment | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **establishmentPost**
> establishmentPost(select, prefer, establishment)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = EstablishmentApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final establishment = Establishment(); // Establishment | establishment

try {
    api_instance.establishmentPost(select, prefer, establishment);
} catch (e) {
    print('Exception when calling EstablishmentApi->establishmentPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **establishment** | [**Establishment**](Establishment.md)| establishment | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

