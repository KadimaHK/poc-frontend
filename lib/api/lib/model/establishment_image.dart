//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EstablishmentImage {
  /// Returns a new [EstablishmentImage] instance.
  EstablishmentImage({
    required this.establishmentId,
    required this.imageId,
  });

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/>
  int establishmentId;

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `image.id`.<fk table='image' column='id'/>
  int imageId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EstablishmentImage &&
    other.establishmentId == establishmentId &&
    other.imageId == imageId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (establishmentId.hashCode) +
    (imageId.hashCode);

  @override
  String toString() => 'EstablishmentImage[establishmentId=$establishmentId, imageId=$imageId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'establishment_id'] = this.establishmentId;
      json[r'image_id'] = this.imageId;
    return json;
  }

  /// Returns a new [EstablishmentImage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EstablishmentImage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EstablishmentImage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EstablishmentImage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EstablishmentImage(
        establishmentId: mapValueOfType<int>(json, r'establishment_id')!,
        imageId: mapValueOfType<int>(json, r'image_id')!,
      );
    }
    return null;
  }

  static List<EstablishmentImage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EstablishmentImage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EstablishmentImage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EstablishmentImage> mapFromJson(dynamic json) {
    final map = <String, EstablishmentImage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EstablishmentImage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EstablishmentImage-objects as value to a dart map
  static Map<String, List<EstablishmentImage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EstablishmentImage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EstablishmentImage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'establishment_id',
    'image_id',
  };
}

