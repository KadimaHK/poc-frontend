# openapi.model.User

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Note: This is a Primary Key.<pk/> | 
**uuid** | **String** |  | [optional] 
**email** | **String** |  | 
**name** | **String** |  | [optional] 
**password** | **String** |  | [optional] 
**iconUrl** | **String** | Note: This is a Foreign Key to `image.image_url`.<fk table='image' column='image_url'/> | [optional] 
**age** | **int** |  | [optional] 
**gender** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**followingCount** | **int** |  | [optional] 
**followerCount** | **int** |  | [optional] 
**points** | **int** |  | [optional] 
**pointsExpiry** | **String** |  | [optional] [default to '(now() + \'1 year\'::interval)']
**verified** | **bool** |  | [optional] [default to false]
**createdAt** | **String** |  | [optional] [default to 'now()']
**updatedAt** | **String** |  | [optional] [default to 'now()']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


