# openapi.model.Review

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
**title** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**content** | **String** |  | [optional] 
**rating** | **num** |  | [optional] 
**tasteRating** | **num** |  | [optional] 
**decorRating** | **num** |  | [optional] 
**serviceRating** | **num** |  | [optional] 
**hygieneRating** | **num** |  | [optional] 
**valueRating** | **num** |  | [optional] 
**dateVisited** | **String** |  | [optional] 
**spend** | **num** | How much did the user spend in the establishment per person | [optional] 
**likes** | **int** |  | [optional] 
**status** | **String** |  | [optional] [default to 'pending']
**createdAt** | **String** |  | [optional] [default to 'now()']
**updatedAt** | **String** |  | [optional] [default to 'now()']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


