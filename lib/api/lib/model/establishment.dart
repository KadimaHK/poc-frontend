//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Establishment {
  /// Returns a new [Establishment] instance.
  Establishment({
    required this.id,
    this.name,
    this.description,
    this.location,
    this.cordX,
    this.cordY,
    this.category,
    this.thumbnailUrl,
    this.rank,
    this.bookingPoints,
    this.createdAt = 'now()',
    this.updatedAt = 'now()',
  });

  /// Note: This is a Primary Key.<pk/>
  int id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

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
  String? location;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? cordX;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? cordY;

  /// Note: This is a Foreign Key to `establishment_category.category`.<fk table='establishment_category' column='category'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// Note: This is a Foreign Key to `image.image_url`.<fk table='image' column='image_url'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thumbnailUrl;

  /// Average rating of the establishment
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? rank;

  /// How many points are a user earning by booking this establishment
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bookingPoints;

  String createdAt;

  String updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Establishment &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.location == location &&
    other.cordX == cordX &&
    other.cordY == cordY &&
    other.category == category &&
    other.thumbnailUrl == thumbnailUrl &&
    other.rank == rank &&
    other.bookingPoints == bookingPoints &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (cordX == null ? 0 : cordX!.hashCode) +
    (cordY == null ? 0 : cordY!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (thumbnailUrl == null ? 0 : thumbnailUrl!.hashCode) +
    (rank == null ? 0 : rank!.hashCode) +
    (bookingPoints == null ? 0 : bookingPoints!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Establishment[id=$id, name=$name, description=$description, location=$location, cordX=$cordX, cordY=$cordY, category=$category, thumbnailUrl=$thumbnailUrl, rank=$rank, bookingPoints=$bookingPoints, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.cordX != null) {
      json[r'cord_x'] = this.cordX;
    } else {
      json[r'cord_x'] = null;
    }
    if (this.cordY != null) {
      json[r'cord_y'] = this.cordY;
    } else {
      json[r'cord_y'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.thumbnailUrl != null) {
      json[r'thumbnail_url'] = this.thumbnailUrl;
    } else {
      json[r'thumbnail_url'] = null;
    }
    if (this.rank != null) {
      json[r'rank'] = this.rank;
    } else {
      json[r'rank'] = null;
    }
    if (this.bookingPoints != null) {
      json[r'booking_points'] = this.bookingPoints;
    } else {
      json[r'booking_points'] = null;
    }
      json[r'created_at'] = this.createdAt;
      json[r'updated_at'] = this.updatedAt;
    return json;
  }

  /// Returns a new [Establishment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Establishment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Establishment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Establishment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Establishment(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        location: mapValueOfType<String>(json, r'location'),
        cordX: num.parse('${json[r'cord_x']}'),
        cordY: num.parse('${json[r'cord_y']}'),
        category: mapValueOfType<String>(json, r'category'),
        thumbnailUrl: mapValueOfType<String>(json, r'thumbnail_url'),
        rank: num.parse('${json[r'rank']}'),
        bookingPoints: mapValueOfType<int>(json, r'booking_points'),
        createdAt: mapValueOfType<String>(json, r'created_at') ?? 'now()',
        updatedAt: mapValueOfType<String>(json, r'updated_at') ?? 'now()',
      );
    }
    return null;
  }

  static List<Establishment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Establishment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Establishment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Establishment> mapFromJson(dynamic json) {
    final map = <String, Establishment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Establishment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Establishment-objects as value to a dart map
  static Map<String, List<Establishment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Establishment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Establishment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

