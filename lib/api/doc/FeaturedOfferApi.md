# openapi.api.FeaturedOfferApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://poc-bar-app.com:80/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**featuredOfferDelete**](FeaturedOfferApi.md#featuredofferdelete) | **DELETE** /featured_offer | 
[**featuredOfferGet**](FeaturedOfferApi.md#featuredofferget) | **GET** /featured_offer | 
[**featuredOfferPatch**](FeaturedOfferApi.md#featuredofferpatch) | **PATCH** /featured_offer | 
[**featuredOfferPost**](FeaturedOfferApi.md#featuredofferpost) | **POST** /featured_offer | 


# **featuredOfferDelete**
> featuredOfferDelete(id, title, voucherCode, expiry, details, description, redemptionPeriod, howToRedeem, isGlobal, imageUrl, establishmentId, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = FeaturedOfferApi();
final id = id_example; // String | 
final title = title_example; // String | 
final voucherCode = voucherCode_example; // String | 
final expiry = expiry_example; // String | 
final details = details_example; // String | 
final description = description_example; // String | 
final redemptionPeriod = redemptionPeriod_example; // String | 
final howToRedeem = howToRedeem_example; // String | 
final isGlobal = isGlobal_example; // String | 
final imageUrl = imageUrl_example; // String | 
final establishmentId = establishmentId_example; // String | 
final prefer = prefer_example; // String | Preference

try {
    api_instance.featuredOfferDelete(id, title, voucherCode, expiry, details, description, redemptionPeriod, howToRedeem, isGlobal, imageUrl, establishmentId, prefer);
} catch (e) {
    print('Exception when calling FeaturedOfferApi->featuredOfferDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **title** | **String**|  | [optional] 
 **voucherCode** | **String**|  | [optional] 
 **expiry** | **String**|  | [optional] 
 **details** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **redemptionPeriod** | **String**|  | [optional] 
 **howToRedeem** | **String**|  | [optional] 
 **isGlobal** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **featuredOfferGet**
> List<FeaturedOffer> featuredOfferGet(id, title, voucherCode, expiry, details, description, redemptionPeriod, howToRedeem, isGlobal, imageUrl, establishmentId, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = FeaturedOfferApi();
final id = id_example; // String | 
final title = title_example; // String | 
final voucherCode = voucherCode_example; // String | 
final expiry = expiry_example; // String | 
final details = details_example; // String | 
final description = description_example; // String | 
final redemptionPeriod = redemptionPeriod_example; // String | 
final howToRedeem = howToRedeem_example; // String | 
final isGlobal = isGlobal_example; // String | 
final imageUrl = imageUrl_example; // String | 
final establishmentId = establishmentId_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.featuredOfferGet(id, title, voucherCode, expiry, details, description, redemptionPeriod, howToRedeem, isGlobal, imageUrl, establishmentId, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling FeaturedOfferApi->featuredOfferGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **title** | **String**|  | [optional] 
 **voucherCode** | **String**|  | [optional] 
 **expiry** | **String**|  | [optional] 
 **details** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **redemptionPeriod** | **String**|  | [optional] 
 **howToRedeem** | **String**|  | [optional] 
 **isGlobal** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<FeaturedOffer>**](FeaturedOffer.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **featuredOfferPatch**
> featuredOfferPatch(id, title, voucherCode, expiry, details, description, redemptionPeriod, howToRedeem, isGlobal, imageUrl, establishmentId, prefer, featuredOffer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = FeaturedOfferApi();
final id = id_example; // String | 
final title = title_example; // String | 
final voucherCode = voucherCode_example; // String | 
final expiry = expiry_example; // String | 
final details = details_example; // String | 
final description = description_example; // String | 
final redemptionPeriod = redemptionPeriod_example; // String | 
final howToRedeem = howToRedeem_example; // String | 
final isGlobal = isGlobal_example; // String | 
final imageUrl = imageUrl_example; // String | 
final establishmentId = establishmentId_example; // String | 
final prefer = prefer_example; // String | Preference
final featuredOffer = FeaturedOffer(); // FeaturedOffer | featured_offer

try {
    api_instance.featuredOfferPatch(id, title, voucherCode, expiry, details, description, redemptionPeriod, howToRedeem, isGlobal, imageUrl, establishmentId, prefer, featuredOffer);
} catch (e) {
    print('Exception when calling FeaturedOfferApi->featuredOfferPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **title** | **String**|  | [optional] 
 **voucherCode** | **String**|  | [optional] 
 **expiry** | **String**|  | [optional] 
 **details** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **redemptionPeriod** | **String**|  | [optional] 
 **howToRedeem** | **String**|  | [optional] 
 **isGlobal** | **String**|  | [optional] 
 **imageUrl** | **String**|  | [optional] 
 **establishmentId** | **String**|  | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **featuredOffer** | [**FeaturedOffer**](FeaturedOffer.md)| featured_offer | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **featuredOfferPost**
> featuredOfferPost(select, prefer, featuredOffer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = FeaturedOfferApi();
final select = select_example; // String | Filtering Columns
final prefer = prefer_example; // String | Preference
final featuredOffer = FeaturedOffer(); // FeaturedOffer | featured_offer

try {
    api_instance.featuredOfferPost(select, prefer, featuredOffer);
} catch (e) {
    print('Exception when calling FeaturedOfferApi->featuredOfferPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **select** | **String**| Filtering Columns | [optional] 
 **prefer** | **String**| Preference | [optional] 
 **featuredOffer** | [**FeaturedOffer**](FeaturedOffer.md)| featured_offer | [optional] 

### Return type

void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

