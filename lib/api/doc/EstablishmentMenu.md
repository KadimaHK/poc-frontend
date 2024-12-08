# openapi.model.EstablishmentMenu

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Note: This is a Primary Key.<pk/> | 
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**price** | **num** |  | [optional] 
**establishmentId** | **int** | Note: This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/> | [optional] 
**menuCategoryId** | **int** | Note: This is a Foreign Key to `menu_category.id`.<fk table='menu_category' column='id'/> | [optional] 
**createdAt** | **String** |  | [optional] [default to 'now()']
**updatedAt** | **String** |  | [optional] [default to 'now()']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


