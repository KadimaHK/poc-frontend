//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EstablishmentMenuImage {
  /// Returns a new [EstablishmentMenuImage] instance.
  EstablishmentMenuImage({
    this.establishmentMenuId,
    this.imageUrl,
  });

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `establishment_menu.id`.<fk table='establishment_menu' column='id'/>
  int? establishmentMenuId;

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `image.image_url`.<fk table='image' column='image_url'/>
  String? imageUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EstablishmentMenuImage &&
    other.establishmentMenuId == establishmentMenuId &&
    other.imageUrl == imageUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (establishmentMenuId.hashCode) +
    (imageUrl.hashCode);

  @override
  String toString() => 'EstablishmentMenuImage[establishmentMenuId=$establishmentMenuId, imageUrl=$imageUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'establishment_menu_id'] = this.establishmentMenuId;
      json[r'image_url'] = this.imageUrl;
    return json;
  }

  /// Returns a new [EstablishmentMenuImage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EstablishmentMenuImage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EstablishmentMenuImage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EstablishmentMenuImage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EstablishmentMenuImage(
        establishmentMenuId: mapValueOfType<int>(json, r'establishment_menu_id')!,
        imageUrl: mapValueOfType<String>(json, r'image_url')!,
      );
    }
    return null;
  }

  static List<EstablishmentMenuImage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EstablishmentMenuImage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EstablishmentMenuImage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EstablishmentMenuImage> mapFromJson(dynamic json) {
    final map = <String, EstablishmentMenuImage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EstablishmentMenuImage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EstablishmentMenuImage-objects as value to a dart map
  static Map<String, List<EstablishmentMenuImage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EstablishmentMenuImage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EstablishmentMenuImage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'establishment_menu_id',
    'image_url',
  };
}

