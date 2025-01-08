# openapi.model.EstablishmentOpeningHours

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**establishmentId** | **int** | Note: This is a Primary Key.<pk/> This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/> | 
**day** | **String** | Note: This is a Primary Key.<pk/> | 
**openTime** | **String** |  | [optional] 
**closeTime** | **String** |  | [optional] 
**isOvernight** | **bool** |  | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


