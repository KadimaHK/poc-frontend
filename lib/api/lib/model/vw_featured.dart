//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VwFeatured {
  /// Returns a new [VwFeatured] instance.
  VwFeatured({
    this.id,
    this.title,
    this.description,
    this.imageId,
    this.content,
    this.establishmentId,
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
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Note: This is a Foreign Key to `image.id`.<fk table='image' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? imageId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

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
  bool operator ==(Object other) => identical(this, other) || other is VwFeatured &&
    other.id == id &&
    other.title == title &&
    other.description == description &&
    other.imageId == imageId &&
    other.content == content &&
    other.establishmentId == establishmentId &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.baseUrl == baseUrl &&
    other.fileName == fileName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (imageId == null ? 0 : imageId!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (establishmentId == null ? 0 : establishmentId!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (baseUrl == null ? 0 : baseUrl!.hashCode) +
    (fileName == null ? 0 : fileName!.hashCode);

  @override
  String toString() => 'VwFeatured[id=$id, title=$title, description=$description, imageId=$imageId, content=$content, establishmentId=$establishmentId, createdAt=$createdAt, updatedAt=$updatedAt, baseUrl=$baseUrl, fileName=$fileName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
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
    if (this.imageId != null) {
      json[r'image_id'] = this.imageId;
    } else {
      json[r'image_id'] = null;
    }
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.establishmentId != null) {
      json[r'establishment_id'] = this.establishmentId;
    } else {
      json[r'establishment_id'] = null;
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

  /// Returns a new [VwFeatured] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VwFeatured? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VwFeatured[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VwFeatured[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VwFeatured(
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        imageId: mapValueOfType<int>(json, r'image_id'),
        content: mapValueOfType<String>(json, r'content'),
        establishmentId: mapValueOfType<int>(json, r'establishment_id'),
        createdAt: mapValueOfType<String>(json, r'created_at'),
        updatedAt: mapValueOfType<String>(json, r'updated_at'),
        baseUrl: mapValueOfType<String>(json, r'base_url'),
        fileName: mapValueOfType<String>(json, r'file_name'),
      );
    }
    return null;
  }

  static List<VwFeatured> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VwFeatured>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VwFeatured.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VwFeatured> mapFromJson(dynamic json) {
    final map = <String, VwFeatured>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VwFeatured.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VwFeatured-objects as value to a dart map
  static Map<String, List<VwFeatured>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VwFeatured>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VwFeatured.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

