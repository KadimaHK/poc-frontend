//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EstablishmentCategory {
  /// Returns a new [EstablishmentCategory] instance.
  EstablishmentCategory({
    required this.category,
  });

  /// Note: This is a Primary Key.<pk/>
  String category;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EstablishmentCategory &&
    other.category == category;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category.hashCode);

  @override
  String toString() => 'EstablishmentCategory[category=$category]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'category'] = this.category;
    return json;
  }

  /// Returns a new [EstablishmentCategory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EstablishmentCategory? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EstablishmentCategory[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EstablishmentCategory[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EstablishmentCategory(
        category: mapValueOfType<String>(json, r'category')!,
      );
    }
    return null;
  }

  static List<EstablishmentCategory> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EstablishmentCategory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EstablishmentCategory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EstablishmentCategory> mapFromJson(dynamic json) {
    final map = <String, EstablishmentCategory>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EstablishmentCategory.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EstablishmentCategory-objects as value to a dart map
  static Map<String, List<EstablishmentCategory>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EstablishmentCategory>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EstablishmentCategory.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'category',
  };
}

