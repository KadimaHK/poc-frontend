//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Review {
  /// Returns a new [Review] instance.
  Review({
    required this.id,
    this.userId,
    this.establishmentId,
    this.title,
    this.description,
    this.content,
    this.rating,
    this.tasteRating,
    this.decorRating,
    this.serviceRating,
    this.hygieneRating,
    this.valueRating,
    this.dateVisited,
    this.spend,
    this.likes,
    this.status = 'pending',
    this.createdAt = 'now()',
    this.updatedAt = 'now()',
  });

  /// Note: This is a Primary Key.<pk/>
  int id;

  /// Note: This is a Foreign Key to `user.id`.<fk table='user' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userId;

  /// Note: This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? establishmentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? rating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? tasteRating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? decorRating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? serviceRating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? hygieneRating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? valueRating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateVisited;

  /// How much did the user spend in the establishment per person
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? spend;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? likes;

  String status;

  String createdAt;

  String updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Review &&
    other.id == id &&
    other.userId == userId &&
    other.establishmentId == establishmentId &&
    other.title == title &&
    other.description == description &&
    other.content == content &&
    other.rating == rating &&
    other.tasteRating == tasteRating &&
    other.decorRating == decorRating &&
    other.serviceRating == serviceRating &&
    other.hygieneRating == hygieneRating &&
    other.valueRating == valueRating &&
    other.dateVisited == dateVisited &&
    other.spend == spend &&
    other.likes == likes &&
    other.status == status &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (establishmentId == null ? 0 : establishmentId!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (rating == null ? 0 : rating!.hashCode) +
    (tasteRating == null ? 0 : tasteRating!.hashCode) +
    (decorRating == null ? 0 : decorRating!.hashCode) +
    (serviceRating == null ? 0 : serviceRating!.hashCode) +
    (hygieneRating == null ? 0 : hygieneRating!.hashCode) +
    (valueRating == null ? 0 : valueRating!.hashCode) +
    (dateVisited == null ? 0 : dateVisited!.hashCode) +
    (spend == null ? 0 : spend!.hashCode) +
    (likes == null ? 0 : likes!.hashCode) +
    (status.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Review[id=$id, userId=$userId, establishmentId=$establishmentId, title=$title, description=$description, content=$content, rating=$rating, tasteRating=$tasteRating, decorRating=$decorRating, serviceRating=$serviceRating, hygieneRating=$hygieneRating, valueRating=$valueRating, dateVisited=$dateVisited, spend=$spend, likes=$likes, status=$status, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    if (this.establishmentId != null) {
      json[r'establishment_id'] = this.establishmentId;
    } else {
      json[r'establishment_id'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.rating != null) {
      json[r'rating'] = this.rating;
    } else {
      json[r'rating'] = null;
    }
    if (this.tasteRating != null) {
      json[r'taste_rating'] = this.tasteRating;
    } else {
      json[r'taste_rating'] = null;
    }
    if (this.decorRating != null) {
      json[r'decor_rating'] = this.decorRating;
    } else {
      json[r'decor_rating'] = null;
    }
    if (this.serviceRating != null) {
      json[r'service_rating'] = this.serviceRating;
    } else {
      json[r'service_rating'] = null;
    }
    if (this.hygieneRating != null) {
      json[r'hygiene_rating'] = this.hygieneRating;
    } else {
      json[r'hygiene_rating'] = null;
    }
    if (this.valueRating != null) {
      json[r'value_rating'] = this.valueRating;
    } else {
      json[r'value_rating'] = null;
    }
    if (this.dateVisited != null) {
      json[r'date_visited'] = this.dateVisited;
    } else {
      json[r'date_visited'] = null;
    }
    if (this.spend != null) {
      json[r'spend'] = this.spend;
    } else {
      json[r'spend'] = null;
    }
    if (this.likes != null) {
      json[r'likes'] = this.likes;
    } else {
      json[r'likes'] = null;
    }
      json[r'status'] = this.status;
      json[r'created_at'] = this.createdAt;
      json[r'updated_at'] = this.updatedAt;
    return json;
  }

  /// Returns a new [Review] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Review? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Review[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Review[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Review(
        id: mapValueOfType<int>(json, r'id')!,
        userId: mapValueOfType<int>(json, r'user_id'),
        establishmentId: mapValueOfType<int>(json, r'establishment_id'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        content: mapValueOfType<String>(json, r'content'),
        rating: num.parse('${json[r'rating']}'),
        tasteRating: num.parse('${json[r'taste_rating']}'),
        decorRating: num.parse('${json[r'decor_rating']}'),
        serviceRating: num.parse('${json[r'service_rating']}'),
        hygieneRating: num.parse('${json[r'hygiene_rating']}'),
        valueRating: num.parse('${json[r'value_rating']}'),
        dateVisited: mapValueOfType<String>(json, r'date_visited'),
        spend: num.parse('${json[r'spend']}'),
        likes: mapValueOfType<int>(json, r'likes'),
        status: mapValueOfType<String>(json, r'status') ?? 'pending',
        createdAt: mapValueOfType<String>(json, r'created_at') ?? 'now()',
        updatedAt: mapValueOfType<String>(json, r'updated_at') ?? 'now()',
      );
    }
    return null;
  }

  static List<Review> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Review>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Review.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Review> mapFromJson(dynamic json) {
    final map = <String, Review>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Review.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Review-objects as value to a dart map
  static Map<String, List<Review>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Review>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Review.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

