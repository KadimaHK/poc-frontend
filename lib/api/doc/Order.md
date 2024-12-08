# openapi.model.Order

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Note: This is a Primary Key.<pk/> | 
**userId** | **int** | Note: This is a Foreign Key to `user.id`.<fk table='user' column='id'/> | [optional] 
**establishmentMenuId** | **int** | Note: This is a Foreign Key to `establishment_menu.id`.<fk table='establishment_menu' column='id'/> | [optional] 
**createdAt** | **String** |  | [optional] [default to 'now()']
**updatedAt** | **String** |  | [optional] [default to 'now()']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


