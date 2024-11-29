//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReviewImage {
  /// Returns a new [ReviewImage] instance.
  ReviewImage({
    required this.id,
    this.reviewId,
    this.imageId,
  });

  /// Note: This is a Primary Key.<pk/>
  int id;

  /// Note: This is a Foreign Key to `review.id`.<fk table='review' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reviewId;

  /// Note: This is a Foreign Key to `image.id`.<fk table='image' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? imageId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReviewImage &&
    other.id == id &&
    other.reviewId == reviewId &&
    other.imageId == imageId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (reviewId == null ? 0 : reviewId!.hashCode) +
    (imageId == null ? 0 : imageId!.hashCode);

  @override
  String toString() => 'ReviewImage[id=$id, reviewId=$reviewId, imageId=$imageId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.reviewId != null) {
      json[r'review_id'] = this.reviewId;
    } else {
      json[r'review_id'] = null;
    }
    if (this.imageId != null) {
      json[r'image_id'] = this.imageId;
    } else {
      json[r'image_id'] = null;
    }
    return json;
  }

  /// Returns a new [ReviewImage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReviewImage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReviewImage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReviewImage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReviewImage(
        id: mapValueOfType<int>(json, r'id')!,
        reviewId: mapValueOfType<int>(json, r'review_id'),
        imageId: mapValueOfType<int>(json, r'image_id'),
      );
    }
    return null;
  }

  static List<ReviewImage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReviewImage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReviewImage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReviewImage> mapFromJson(dynamic json) {
    final map = <String, ReviewImage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReviewImage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReviewImage-objects as value to a dart map
  static Map<String, List<ReviewImage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReviewImage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReviewImage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

