# openapi.model.Message

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **String** | Note: This is a Primary Key.<pk/> | 
**time** | **String** |  | [default to 'now()']
**fromUserId** | **int** | Note: This is a Foreign Key to `user.id`.<fk table='user' column='id'/> | 
**toUserId** | **int** | Note: This is a Foreign Key to `user.id`.<fk table='user' column='id'/> | 
**body** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


