//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VwEstablishmentImage {
  /// Returns a new [VwEstablishmentImage] instance.
  VwEstablishmentImage({
    this.establishmentId,
    this.imageId,
    this.baseUrl,
    this.fileName,
  });

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? establishmentId;

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `image.id`.<fk table='image' column='id'/>
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
  String? baseUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VwEstablishmentImage &&
    other.establishmentId == establishmentId &&
    other.imageId == imageId &&
    other.baseUrl == baseUrl &&
    other.fileName == fileName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (establishmentId == null ? 0 : establishmentId!.hashCode) +
    (imageId == null ? 0 : imageId!.hashCode) +
    (baseUrl == null ? 0 : baseUrl!.hashCode) +
    (fileName == null ? 0 : fileName!.hashCode);

  @override
  String toString() => 'VwEstablishmentImage[establishmentId=$establishmentId, imageId=$imageId, baseUrl=$baseUrl, fileName=$fileName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.establishmentId != null) {
      json[r'establishment_id'] = this.establishmentId;
    } else {
      json[r'establishment_id'] = null;
    }
    if (this.imageId != null) {
      json[r'image_id'] = this.imageId;
    } else {
      json[r'image_id'] = null;
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

  /// Returns a new [VwEstablishmentImage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VwEstablishmentImage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VwEstablishmentImage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VwEstablishmentImage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VwEstablishmentImage(
        establishmentId: mapValueOfType<int>(json, r'establishment_id'),
        imageId: mapValueOfType<int>(json, r'image_id'),
        baseUrl: mapValueOfType<String>(json, r'base_url'),
        fileName: mapValueOfType<String>(json, r'file_name'),
      );
    }
    return null;
  }

  static List<VwEstablishmentImage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VwEstablishmentImage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VwEstablishmentImage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VwEstablishmentImage> mapFromJson(dynamic json) {
    final map = <String, VwEstablishmentImage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VwEstablishmentImage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VwEstablishmentImage-objects as value to a dart map
  static Map<String, List<VwEstablishmentImage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VwEstablishmentImage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VwEstablishmentImage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

