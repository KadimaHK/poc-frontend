//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VwEstablishment {
  /// Returns a new [VwEstablishment] instance.
  VwEstablishment({
    this.id,
    this.name,
    this.description,
    this.location,
    this.cordX,
    this.cordY,
    this.category,
    this.thumbnail,
    this.rank,
    this.bookingPoints,
    this.createdAt,
    this.updatedAt,
    this.baseUrl,
    this.fileName,
  });

  /// Note: This is a Primary Key.<pk/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

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

  /// Note: This is a Foreign Key to `image.id`.<fk table='image' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? thumbnail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? rank;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bookingPoints;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? baseUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VwEstablishment &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.location == location &&
    other.cordX == cordX &&
    other.cordY == cordY &&
    other.category == category &&
    other.thumbnail == thumbnail &&
    other.rank == rank &&
    other.bookingPoints == bookingPoints &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.baseUrl == baseUrl &&
    other.fileName == fileName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (cordX == null ? 0 : cordX!.hashCode) +
    (cordY == null ? 0 : cordY!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (thumbnail == null ? 0 : thumbnail!.hashCode) +
    (rank == null ? 0 : rank!.hashCode) +
    (bookingPoints == null ? 0 : bookingPoints!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (baseUrl == null ? 0 : baseUrl!.hashCode) +
    (fileName == null ? 0 : fileName!.hashCode);

  @override
  String toString() => 'VwEstablishment[id=$id, name=$name, description=$description, location=$location, cordX=$cordX, cordY=$cordY, category=$category, thumbnail=$thumbnail, rank=$rank, bookingPoints=$bookingPoints, createdAt=$createdAt, updatedAt=$updatedAt, baseUrl=$baseUrl, fileName=$fileName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
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
    if (this.thumbnail != null) {
      json[r'thumbnail'] = this.thumbnail;
    } else {
      json[r'thumbnail'] = null;
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
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt;
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt;
    } else {
      json[r'updated_at'] = null;
    }
    if (this.baseUrl != null) {
      json[r'base_url'] = this.baseUrl;
    } else {
      json[r'base_url'] = null;
    }
    if (this.fileName != null) {
      json[r'file_name'] = this.fileName;
    } else {
      json[r'file_name'] = null;
    }
    return json;
  }

  /// Returns a new [VwEstablishment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VwEstablishment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VwEstablishment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VwEstablishment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VwEstablishment(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        location: mapValueOfType<String>(json, r'location'),
        cordX: num.parse('${json[r'cord_x']}'),
        cordY: num.parse('${json[r'cord_y']}'),
        category: mapValueOfType<String>(json, r'category'),
        thumbnail: mapValueOfType<int>(json, r'thumbnail'),
        rank: num.parse('${json[r'rank']}'),
        bookingPoints: mapValueOfType<int>(json, r'booking_points'),
        createdAt: mapValueOfType<String>(json, r'created_at'),
        updatedAt: mapValueOfType<String>(json, r'updated_at'),
        baseUrl: mapValueOfType<String>(json, r'base_url'),
        fileName: mapValueOfType<String>(json, r'file_name'),
      );
    }
    return null;
  }

  static List<VwEstablishment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VwEstablishment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VwEstablishment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VwEstablishment> mapFromJson(dynamic json) {
    final map = <String, VwEstablishment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VwEstablishment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VwEstablishment-objects as value to a dart map
  static Map<String, List<VwEstablishment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VwEstablishment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VwEstablishment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

