//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EstablishmentOpeningHours {
  /// Returns a new [EstablishmentOpeningHours] instance.
  EstablishmentOpeningHours({
    this.establishmentId,
    this.day,
    this.openTime,
    this.closeTime,
    this.isOvernight,
  });

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/>
  int? establishmentId;

  /// Note: This is a Primary Key.<pk/>
  String? day;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? openTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? closeTime;

  bool? isOvernight;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EstablishmentOpeningHours &&
    other.establishmentId == establishmentId &&
    other.day == day &&
    other.openTime == openTime &&
    other.closeTime == closeTime &&
    other.isOvernight == isOvernight;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (establishmentId.hashCode) +
    (day.hashCode) +
    (openTime == null ? 0 : openTime!.hashCode) +
    (closeTime == null ? 0 : closeTime!.hashCode) +
    (isOvernight.hashCode);

  @override
  String toString() => 'EstablishmentOpeningHours[establishmentId=$establishmentId, day=$day, openTime=$openTime, closeTime=$closeTime, isOvernight=$isOvernight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.establishmentId != null)
      json[r'establishment_id'] = this.establishmentId;
    if (this.day != null)
      json[r'day'] = this.day;
    if (this.openTime != null)
      json[r'open_time'] = this.openTime;
    if (this.closeTime != null)
      json[r'close_time'] = this.closeTime;
    if (this.isOvernight != null)
      json[r'is_overnight'] = this.isOvernight;
    return json;
  }

  /// Returns a new [EstablishmentOpeningHours] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EstablishmentOpeningHours? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return EstablishmentOpeningHours(
        establishmentId: mapValueOfType<int>(json, r'establishment_id'),
        day: mapValueOfType<String>(json, r'day'),
        openTime: mapValueOfType<String>(json, r'open_time'),
        closeTime: mapValueOfType<String>(json, r'close_time'),
        isOvernight: mapValueOfType<bool>(json, r'is_overnight') ?? false,
      );
    }
    return null;
  }

  static List<EstablishmentOpeningHours> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EstablishmentOpeningHours>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EstablishmentOpeningHours.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EstablishmentOpeningHours> mapFromJson(dynamic json) {
    final map = <String, EstablishmentOpeningHours>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EstablishmentOpeningHours.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EstablishmentOpeningHours-objects as value to a dart map
  static Map<String, List<EstablishmentOpeningHours>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EstablishmentOpeningHours>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EstablishmentOpeningHours.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }


}

