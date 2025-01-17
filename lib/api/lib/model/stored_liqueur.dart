//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StoredLiqueur {
  /// Returns a new [StoredLiqueur] instance.
  StoredLiqueur({
    required this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.storedDate,
    this.expiryDate,
    this.establishmentId,
    this.isRedeemed = false,
    this.userId,
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

  /// Note: This is a Foreign Key to `image.image_url`.<fk table='image' column='image_url'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? storedDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expiryDate;

  /// Note: This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? establishmentId;

  bool isRedeemed;

  /// Note: This is a Foreign Key to `user.id`.<fk table='user' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userId;

  String createdAt;

  String updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StoredLiqueur &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.imageUrl == imageUrl &&
    other.storedDate == storedDate &&
    other.expiryDate == expiryDate &&
    other.establishmentId == establishmentId &&
    other.isRedeemed == isRedeemed &&
    other.userId == userId &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (storedDate == null ? 0 : storedDate!.hashCode) +
    (expiryDate == null ? 0 : expiryDate!.hashCode) +
    (establishmentId == null ? 0 : establishmentId!.hashCode) +
    (isRedeemed.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'StoredLiqueur[id=$id, name=$name, description=$description, imageUrl=$imageUrl, storedDate=$storedDate, expiryDate=$expiryDate, establishmentId=$establishmentId, isRedeemed=$isRedeemed, userId=$userId, createdAt=$createdAt, updatedAt=$updatedAt]';

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
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    if (this.storedDate != null) {
      json[r'stored_date'] = this.storedDate;
    } else {
      json[r'stored_date'] = null;
    }
    if (this.expiryDate != null) {
      json[r'expiry_date'] = this.expiryDate;
    } else {
      json[r'expiry_date'] = null;
    }
    if (this.establishmentId != null) {
      json[r'establishment_id'] = this.establishmentId;
    } else {
      json[r'establishment_id'] = null;
    }
      json[r'is_redeemed'] = this.isRedeemed;
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
      json[r'created_at'] = this.createdAt;
      json[r'updated_at'] = this.updatedAt;
    return json;
  }

  /// Returns a new [StoredLiqueur] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StoredLiqueur? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StoredLiqueur[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StoredLiqueur[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StoredLiqueur(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        storedDate: mapValueOfType<String>(json, r'stored_date'),
        expiryDate: mapValueOfType<String>(json, r'expiry_date'),
        establishmentId: mapValueOfType<int>(json, r'establishment_id'),
        isRedeemed: mapValueOfType<bool>(json, r'is_redeemed') ?? false,
        userId: mapValueOfType<int>(json, r'user_id'),
        createdAt: mapValueOfType<String>(json, r'created_at') ?? 'now()',
        updatedAt: mapValueOfType<String>(json, r'updated_at') ?? 'now()',
      );
    }
    return null;
  }

  static List<StoredLiqueur> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoredLiqueur>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoredLiqueur.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StoredLiqueur> mapFromJson(dynamic json) {
    final map = <String, StoredLiqueur>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StoredLiqueur.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StoredLiqueur-objects as value to a dart map
  static Map<String, List<StoredLiqueur>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StoredLiqueur>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StoredLiqueur.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

