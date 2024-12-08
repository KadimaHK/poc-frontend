# openapi.model.VwFeaturedOffer

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Note: This is a Primary Key.<pk/> | [optional] 
**title** | **String** |  | [optional] 
**voucherCode** | **String** |  | [optional] 
**expiry** | **String** |  | [optional] 
**details** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**redemptionPeriod** | **String** |  | [optional] 
**howToRedeem** | **String** |  | [optional] 
**isGlobal** | **bool** |  | [optional] 
**imageUrl** | **String** | Note: This is a Foreign Key to `image.image_url`.<fk table='image' column='image_url'/> | [optional] 
**establishmentId** | **int** | Note: This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/> | [optional] 
**baseUrl** | **String** |  | [optional] 
**fileName** | **String** | Note: This is a Primary Key.<pk/> | [optional] 
**location** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


