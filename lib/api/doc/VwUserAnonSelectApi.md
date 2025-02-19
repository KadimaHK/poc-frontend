# openapi.api.VwUserAnonSelectApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://poc-bar-app.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vwUserAnonSelectDelete**](VwUserAnonSelectApi.md#vwuseranonselectdelete) | **DELETE** /vw_user_anon_select | View for anonymous user to select user data. Logged in users should use user directly.
[**vwUserAnonSelectGet**](VwUserAnonSelectApi.md#vwuseranonselectget) | **GET** /vw_user_anon_select | View for anonymous user to select user data. Logged in users should use user directly.
[**vwUserAnonSelectPatch**](VwUserAnonSelectApi.md#vwuseranonselectpatch) | **PATCH** /vw_user_anon_select | View for anonymous user to select user data. Logged in users should use user directly.
[**vwUserAnonSelectPost**](VwUserAnonSelectApi.md#vwuseranonselectpost) | **POST** /vw_user_anon_select | View for anonymous user to select user data. Logged in users should use user directly.


# **vwUserAnonSelectDelete**
> vwUserAnonSelectDelete(id, uuid, iconUrl, email, name, age, gender, description, followingCount, followerCount, prefer)

View for anonymous user to select user data. Logged in users should use user directly.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = VwUserAnonSelectApi();
final id = id_example; // String | 
final uuid = uuid_example; // String | 
final iconUrl = iconUrl_example; // String | 
final email = email_example; // String | 
final name = name_example; // String | 
final age = age_example; // String | 
final gender = gender_example; // String | 
final description = description_example; // String | 
final followingCount = followingCount_example; // String | 
final followerCount = followerCount_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.vwUserAnonSelectDelete(id, uuid, iconUrl, email, name, age, gender, description, followingCount, followerCount, prefer);
} catch (e) {
    print('Exception when calling VwUserAnonSelectApi->vwUserAnonSelectDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **uuid** | **String**|  | [optional] 
 **iconUrl** | **String**|  | [optional] 
 **email** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **age** | **String**|  | [optional] 
 **gender** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **followingCount** | **String**|  | [optional] 
 **followerCount** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vwUserAnonSelectGet**
> List<VwUserAnonSelect> vwUserAnonSelectGet(id, uuid, iconUrl, email, name, age, gender, description, followingCount, followerCount, select, order, range, rangeUnit, offset, limit, prefer)

View for anonymous user to select user data. Logged in users should use user directly.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = VwUserAnonSelectApi();
final id = id_example; // String | 
final uuid = uuid_example; // String | 
final iconUrl = iconUrl_example; // String | 
final email = email_example; // String | 
final name = name_example; // String | 
final age = age_example; // String | 
final gender = gender_example; // String | 
final description = description_example; // String | 
final followingCount = followingCount_example; // String | 
final followerCount = followerCount_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.vwUserAnonSelectGet(id, uuid, iconUrl, email, name, age, gender, description, followingCount, followerCount, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling VwUserAnonSelectApi->vwUserAnonSelectGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **uuid** | **String**|  | [optional] 
 **iconUrl** | **String**|  | [optional] 
 **email** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **age** | **String**|  | [optional] 
 **gender** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **followingCount** | **String**|  | [optional] 
 **followerCount** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<VwUserAnonSelect>**](VwUserAnonSelect.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vwUserAnonSelectPatch**
> vwUserAnonSelectPatch(id, uuid, iconUrl, email, name, age, gender, description, followingCount, followerCount, prefer, vwUserAnonSelect)

View for anonymous user to select user data. Logged in users should use user directly.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = VwUserAnonSelectApi();
final id = id_example; // String | 
final uuid = uuid_example; // String | 
final iconUrl = iconUrl_example; // String | 
final email = email_example; // String | 
final name = name_example; // String | 
final age = age_example; // String | 
final gender = gender_example; // String | 
final description = description_example; // String | 
final followingCount = followingCount_example; // String | 
final followerCount = followerCount_example; // String | 
final prefer = prefer_example; // String | Preference
final vwUserAnonSelect = VwUserAnonSelect(); // VwUserAnonSelect | vw_user_anon_select

try {
    api_instance.vwUserAnonSelectPatch(id, uuid, iconUrl, email, name, age, gender, description, followingCount, followerCount, prefer, vwUserAnonSelect);
} catch (e) {
    print('Exception when calling VwUserAnonSelectApi->vwUserAnonSelectPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **uuid** | **String**|  | [optional] 
 **iconUrl** | **String**|  | [optional] 
 **email** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **age** | **String**|  | [optional] 
 **gender** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **followingCount** | **String**|  | [optional] 
 **followerCount** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **vwUserAnonSelect** | [**VwUserAnonSelect**](VwUserAnonSelect.md)| vw_user_anon_select | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vwUserAnonSelectPost**
> vwUserAnonSelectPost(select, prefer, vwUserAnonSelect)

View for anonymous user to select user data. Logged in users should use user directly.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = VwUserAnonSelectApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final vwUserAnonSelect = VwUserAnonSelect(); // VwUserAnonSelect | vw_user_anon_select

try {
    api_instance.vwUserAnonSelectPost(select, prefer, vwUserAnonSelect);
} catch (e) {
    print('Exception when calling VwUserAnonSelectApi->vwUserAnonSelectPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **vwUserAnonSelect** | [**VwUserAnonSelect**](VwUserAnonSelect.md)| vw_user_anon_select | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

