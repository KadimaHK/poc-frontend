# openapi.model.StoredLiqueur

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Note: This is a Primary Key.<pk/> | 
**userId** | **int** | Note: This is a Foreign Key to `user.id`.<fk table='user' column='id'/> | [optional] 
**establishmentId** | **int** | Note: This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/> | [optional] 
**imageUrl** | **String** | Note: This is a Foreign Key to `image.image_url`.<fk table='image' column='image_url'/> | [optional] 
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**storedDate** | **String** |  | [optional] 
**expiryDate** | **String** |  | [optional] 
**isRedeemed** | **bool** |  | [optional] [default to false]
**redeemCode** | **String** |  | [optional] 
**createdAt** | **String** |  | [optional] [default to 'now()']
**updatedAt** | **String** |  | [optional] [default to 'now()']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


