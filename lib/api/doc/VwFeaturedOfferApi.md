# openapi.api.VwFeaturedOfferApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.50.79:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vwFeaturedOfferGet**](VwFeaturedOfferApi.md#vwfeaturedofferget) | **GET** /vw_featured_offer | 


# **vwFeaturedOfferGet**
> List<VwFeaturedOffer> vwFeaturedOfferGet(id, title, voucherCode, expiry, details, description, redemptionPeriod, howToRedeem, isGlobal, imageUrl, establishmentId, baseUrl, fileName, location, select, order, range, rangeUnit, offset, limit, prefer)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: JWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWT').apiKeyPrefix = 'Bearer';

final api_instance = VwFeaturedOfferApi();
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
final baseUrl = baseUrl_example; // String | 
final fileName = fileName_example; // String | 
final location = location_example; // String | 
final select = select_example; // String | Filtering Columns
final order = order_example; // String | Ordering
final range = range_example; // String | Limiting and Pagination
final rangeUnit = rangeUnit_example; // String | Limiting and Pagination
final offset = offset_example; // String | Limiting and Pagination
final limit = limit_example; // String | Limiting and Pagination
final prefer = prefer_example; // String | Preference

try {
    final result = api_instance.vwFeaturedOfferGet(id, title, voucherCode, expiry, details, description, redemptionPeriod, howToRedeem, isGlobal, imageUrl, establishmentId, baseUrl, fileName, location, select, order, range, rangeUnit, offset, limit, prefer);
    print(result);
} catch (e) {
    print('Exception when calling VwFeaturedOfferApi->vwFeaturedOfferGet: $e\n');
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
 **baseUrl** | **String**|  | [optional] 
 **fileName** | **String**|  | [optional] 
 **location** | **String**|  | [optional] 
 **select** | **String**| Filtering Columns | [optional] 
 **order** | **String**| Ordering | [optional] 
 **range** | **String**| Limiting and Pagination | [optional] 
 **rangeUnit** | **String**| Limiting and Pagination | [optional] [default to 'items']
 **offset** | **String**| Limiting and Pagination | [optional] 
 **limit** | **String**| Limiting and Pagination | [optional] 
 **prefer** | **String**| Preference | [optional] 

### Return type

[**List<VwFeaturedOffer>**](VwFeaturedOffer.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.pgrst.object+json;nulls=stripped, application/vnd.pgrst.object+json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

