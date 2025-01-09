# openapi.model.ReviewImage

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Note: This is a Primary Key.<pk/> | 
**reviewId** | **int** | Note: This is a Foreign Key to `review.id`.<fk table='review' column='id'/> | [optional] 
**imageUrl** | **String** | Note: This is a Foreign Key to `image.image_url`.<fk table='image' column='image_url'/> | [optional] 
**description** | **String** |  | [optional] 
**price** | **num** |  | [optional] 
**type** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


