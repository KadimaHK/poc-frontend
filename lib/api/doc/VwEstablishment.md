# openapi.model.VwEstablishment

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Note: This is a Primary Key.<pk/> | [optional] 
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**location** | **String** |  | [optional] 
**cordX** | **num** |  | [optional] 
**cordY** | **num** |  | [optional] 
**category** | **String** | Note: This is a Foreign Key to `establishment_category.category`.<fk table='establishment_category' column='category'/> | [optional] 
**thumbnail** | **int** | Note: This is a Foreign Key to `image.id`.<fk table='image' column='id'/> | [optional] 
**rank** | **num** |  | [optional] 
**bookingPoints** | **int** |  | [optional] 
**createdAt** | **String** |  | [optional] 
**updatedAt** | **String** |  | [optional] 
**baseUrl** | **String** |  | [optional] 
**fileName** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


