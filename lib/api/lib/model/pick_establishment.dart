//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PickEstablishment {
  /// Returns a new [PickEstablishment] instance.
  PickEstablishment({
    this.pickId,
    this.establishmentId,
  });

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `pick.id`.<fk table='pick' column='id'/>
  int? pickId;

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/>
  int? establishmentId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PickEstablishment &&
    other.pickId == pickId &&
    other.establishmentId == establishmentId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pickId.hashCode) +
    (establishmentId.hashCode);

  @override
  String toString() => 'PickEstablishment[pickId=$pickId, establishmentId=$establishmentId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.pickId != null)
      json[r'pick_id'] = this.pickId;
    if (this.establishmentId != null)
      json[r'establishment_id'] = this.establishmentId;
    return json;
  }

  /// Returns a new [PickEstablishment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PickEstablishment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PickEstablishment(
        pickId: mapValueOfType<int>(json, r'pick_id'),
        establishmentId: mapValueOfType<int>(json, r'establishment_id'),
      );
    }
    return null;
  }

  static List<PickEstablishment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PickEstablishment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PickEstablishment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PickEstablishment> mapFromJson(dynamic json) {
    final map = <String, PickEstablishment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PickEstablishment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PickEstablishment-objects as value to a dart map
  static Map<String, List<PickEstablishment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PickEstablishment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PickEstablishment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }


}

