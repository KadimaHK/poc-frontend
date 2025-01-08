# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://poc-bar-app.com:80/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userDelete**](UserApi.md#userdelete) | **DELETE** /user | 
[**userGet**](UserApi.md#userget) | **GET** /user | 
[**userPatch**](UserApi.md#userpatch) | **PATCH** /user | 
[**userPost**](UserApi.md#userpost) | **POST** /user | 


# **userDelete**
> userDelete(id, uuid, email, name, password, iconUrl, age, gender, description, followingCount, followerCount, bookmarkCount, reviewCount, photoCount, points, pointsExpiry, verified, createdAt, updatedAt, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final id = id_example; // String | 
final uuid = uuid_example; // String | 
final email = email_example; // String | 
final name = name_example; // String | 
final password = password_example; // String | 
final iconUrl = iconUrl_example; // String | 
final age = age_example; // String | 
final gender = gender_example; // String | 
final description = description_example; // String | 
final followingCount = followingCount_example; // String | 
final followerCount = followerCount_example; // String | 
final bookmarkCount = bookmarkCount_example; // String | 
final reviewCount = reviewCount_example; // String | 
final photoCount = photoCount_example; // String | 
final points = points_example; // String | 
final pointsExpiry = pointsExpiry_example; // String | 
final verified = verified_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.userDelete(id, uuid, email, name, password, iconUrl, age, gender, description, followingCount, followerCount, bookmarkCount, reviewCount, photoCount, points, pointsExpiry, verified, createdAt, updatedAt, prefer);
} catch (e) {
    print('Exception when calling UserApi->userDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **uuid** | **String**|  | [optional] 
 **email** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **password** | **String**|  | [optional] 
 **iconUrl** | **String**|  | [optional] 
 **age** | **String**|  | [optional] 
 **gender** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **followingCount** | **String**|  | [optional] 
 **followerCount** | **String**|  | [optional] 
 **bookmarkCount** | **String**|  | [optional] 
 **reviewCount** | **String**|  | [optional] 
 **photoCount** | **String**|  | [optional] 
 **points** | **String**|  | [optional] 
 **pointsExpiry** | **String**|  | [optional] 
 **verified** | **String**|  | [optional] 
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

# **userGet**
> List<User> userGet(id, uuid, email, name, password, iconUrl, age, gender, description, followingCount, followerCount, bookmarkCount, reviewCount, photoCount, points, pointsExpiry, verified, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final id = id_example; // String | 
final uuid = uuid_example; // String | 
final email = email_example; // String | 
final name = name_example; // String | 
final password = password_example; // String | 
final iconUrl = iconUrl_example; // String | 
final age = age_example; // String | 
final gender = gender_example; // String | 
final description = description_example; // String | 
final followingCount = followingCount_example; // String | 
final followerCount = followerCount_example; // String | 
final bookmarkCount = bookmarkCount_example; // String | 
final reviewCount = reviewCount_example; // String | 
final photoCount = photoCount_example; // String | 
final points = points_example; // String | 
final pointsExpiry = pointsExpiry_example; // String | 
final verified = verified_example; // String | 
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
    final result = api_instance.userGet(id, uuid, email, name, password, iconUrl, age, gender, description, followingCount, followerCount, bookmarkCount, reviewCount, photoCount, points, pointsExpiry, verified, createdAt, updatedAt, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **uuid** | **String**|  | [optional] 
 **email** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **password** | **String**|  | [optional] 
 **iconUrl** | **String**|  | [optional] 
 **age** | **String**|  | [optional] 
 **gender** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **followingCount** | **String**|  | [optional] 
 **followerCount** | **String**|  | [optional] 
 **bookmarkCount** | **String**|  | [optional] 
 **reviewCount** | **String**|  | [optional] 
 **photoCount** | **String**|  | [optional] 
 **points** | **String**|  | [optional] 
 **pointsExpiry** | **String**|  | [optional] 
 **verified** | **String**|  | [optional] 
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

[**List<User>**](User.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPatch**
> userPatch(id, uuid, email, name, password, iconUrl, age, gender, description, followingCount, followerCount, bookmarkCount, reviewCount, photoCount, points, pointsExpiry, verified, createdAt, updatedAt, prefer, user)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final id = id_example; // String | 
final uuid = uuid_example; // String | 
final email = email_example; // String | 
final name = name_example; // String | 
final password = password_example; // String | 
final iconUrl = iconUrl_example; // String | 
final age = age_example; // String | 
final gender = gender_example; // String | 
final description = description_example; // String | 
final followingCount = followingCount_example; // String | 
final followerCount = followerCount_example; // String | 
final bookmarkCount = bookmarkCount_example; // String | 
final reviewCount = reviewCount_example; // String | 
final photoCount = photoCount_example; // String | 
final points = points_example; // String | 
final pointsExpiry = pointsExpiry_example; // String | 
final verified = verified_example; // String | 
final createdAt = createdAt_example; // String | 
final updatedAt = updatedAt_example; // String | 
final prefer = prefer_example; // String | Preference
final user = User(); // User | user

try {
    api_instance.userPatch(id, uuid, email, name, password, iconUrl, age, gender, description, followingCount, followerCount, bookmarkCount, reviewCount, photoCount, points, pointsExpiry, verified, createdAt, updatedAt, prefer, user);
} catch (e) {
    print('Exception when calling UserApi->userPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **uuid** | **String**|  | [optional] 
 **email** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **password** | **String**|  | [optional] 
 **iconUrl** | **String**|  | [optional] 
 **age** | **String**|  | [optional] 
 **gender** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **followingCount** | **String**|  | [optional] 
 **followerCount** | **String**|  | [optional] 
 **bookmarkCount** | **String**|  | [optional] 
 **reviewCount** | **String**|  | [optional] 
 **photoCount** | **String**|  | [optional] 
 **points** | **String**|  | [optional] 
 **pointsExpiry** | **String**|  | [optional] 
 **verified** | **String**|  | [optional] 
 **createdAt** | **String**|  | [optional] 
 **updatedAt** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **user** | [**User**](User.md)| user | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPost**
> userPost(select, prefer, user)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final user = User(); // User | user

try {
    api_instance.userPost(select, prefer, user);
} catch (e) {
    print('Exception when calling UserApi->userPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **user** | [**User**](User.md)| user | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

