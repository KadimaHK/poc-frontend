# openapi.model.User

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Note: This is a Primary Key.<pk/> | 
**email** | **String** |  | 
**name** | **String** |  | [optional] 
**password** | **String** |  | [optional] 
**iconId** | **int** | Note: This is a Foreign Key to `image.id`.<fk table='image' column='id'/> | [optional] 
**age** | **int** |  | [optional] 
**gender** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**followingCount** | **int** |  | [optional] 
**followerCount** | **int** |  | [optional] 
**verified** | **bool** |  | [optional] [default to false]
**createdAt** | **String** |  | [optional] [default to 'now()']
**updatedAt** | **String** |  | [optional] [default to 'now()']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


