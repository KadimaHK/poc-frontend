//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StoredLiqueurImage {
  /// Returns a new [StoredLiqueurImage] instance.
  StoredLiqueurImage({
    this.storedLiqueurId,
    this.imageUrl,
  });

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `stored_liqueur.id`.<fk table='stored_liqueur' column='id'/>
  int? storedLiqueurId;

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `image.image_url`.<fk table='image' column='image_url'/>
  String? imageUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StoredLiqueurImage &&
    other.storedLiqueurId == storedLiqueurId &&
    other.imageUrl == imageUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (storedLiqueurId.hashCode) +
    (imageUrl.hashCode);

  @override
  String toString() => 'StoredLiqueurImage[storedLiqueurId=$storedLiqueurId, imageUrl=$imageUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.storedLiqueurId != null)
      json[r'stored_liqueur_id'] = this.storedLiqueurId;
    if (this.imageUrl != null)
      json[r'image_url'] = this.imageUrl;
    return json;
  }

  /// Returns a new [StoredLiqueurImage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StoredLiqueurImage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return StoredLiqueurImage(
        storedLiqueurId: mapValueOfType<int>(json, r'stored_liqueur_id'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
      );
    }
    return null;
  }

  static List<StoredLiqueurImage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoredLiqueurImage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoredLiqueurImage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StoredLiqueurImage> mapFromJson(dynamic json) {
    final map = <String, StoredLiqueurImage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StoredLiqueurImage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StoredLiqueurImage-objects as value to a dart map
  static Map<String, List<StoredLiqueurImage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StoredLiqueurImage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StoredLiqueurImage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }


}

