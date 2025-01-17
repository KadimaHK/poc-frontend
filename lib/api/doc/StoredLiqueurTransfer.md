# openapi.model.StoredLiqueurTransfer

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Note: This is a Primary Key.<pk/> | 
**storedLiqueurId** | **int** | Note: This is a Foreign Key to `stored_liqueur.id`.<fk table='stored_liqueur' column='id'/> | [optional] 
**fromUserId** | **int** | Note: This is a Foreign Key to `user.id`.<fk table='user' column='id'/> | [optional] 
**toUserId** | **int** | Note: This is a Foreign Key to `user.id`.<fk table='user' column='id'/> | [optional] 
**isAccepted** | **bool** |  | [optional] [default to false]
**createdAt** | **String** |  | [optional] [default to 'now()']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


