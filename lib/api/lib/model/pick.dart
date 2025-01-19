//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Pick {
  /// Returns a new [Pick] instance.
  Pick({
    this.id,
    this.message,
    this.expiry,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  /// Note: This is a Primary Key.<pk/>
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expiry;

  /// Note: This is a Foreign Key to `image.image_url`.<fk table='image' column='image_url'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageUrl;

  String? createdAt;

  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Pick &&
    other.id == id &&
    other.message == message &&
    other.expiry == expiry &&
    other.imageUrl == imageUrl &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (expiry == null ? 0 : expiry!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Pick[id=$id, message=$message, expiry=$expiry, imageUrl=$imageUrl, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null)
      json[r'id'] = this.id;
    if (this.message != null)
      json[r'message'] = this.message;
    if (this.expiry != null)
      json[r'expiry'] = this.expiry;
    if (this.imageUrl != null)
      json[r'image_url'] = this.imageUrl;
    if (this.createdAt != null)
      json[r'created_at'] = this.createdAt;
    if (this.updatedAt != null)
      json[r'updated_at'] = this.updatedAt;
    return json;
  }

  /// Returns a new [Pick] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Pick? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return Pick(
        id: mapValueOfType<int>(json, r'id'),
        message: mapValueOfType<String>(json, r'message'),
        expiry: mapValueOfType<String>(json, r'expiry'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        createdAt: mapValueOfType<String>(json, r'created_at') ?? 'now()',
        updatedAt: mapValueOfType<String>(json, r'updated_at') ?? 'now()',
      );
    }
    return null;
  }

  static List<Pick> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Pick>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Pick.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Pick> mapFromJson(dynamic json) {
    final map = <String, Pick>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Pick.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Pick-objects as value to a dart map
  static Map<String, List<Pick>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Pick>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Pick.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }


}

