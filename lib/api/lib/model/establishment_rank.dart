//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EstablishmentRank {
  /// Returns a new [EstablishmentRank] instance.
  EstablishmentRank({
    this.establishmentId,
    this.userId,
    this.rank,
  });

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/>
  int? establishmentId;

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `user.id`.<fk table='user' column='id'/>
  int? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rank;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EstablishmentRank &&
    other.establishmentId == establishmentId &&
    other.userId == userId &&
    other.rank == rank;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (establishmentId.hashCode) +
    (userId.hashCode) +
    (rank == null ? 0 : rank!.hashCode);

  @override
  String toString() => 'EstablishmentRank[establishmentId=$establishmentId, userId=$userId, rank=$rank]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.establishmentId != null)
      json[r'establishment_id'] = this.establishmentId;
    if (this.userId != null)
      json[r'user_id'] = this.userId;
    if (this.rank != null)
      json[r'rank'] = this.rank;
    return json;
  }

  /// Returns a new [EstablishmentRank] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EstablishmentRank? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return EstablishmentRank(
        establishmentId: mapValueOfType<int>(json, r'establishment_id'),
        userId: mapValueOfType<int>(json, r'user_id'),
        rank: mapValueOfType<int>(json, r'rank'),
      );
    }
    return null;
  }

  static List<EstablishmentRank> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EstablishmentRank>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EstablishmentRank.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EstablishmentRank> mapFromJson(dynamic json) {
    final map = <String, EstablishmentRank>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EstablishmentRank.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EstablishmentRank-objects as value to a dart map
  static Map<String, List<EstablishmentRank>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EstablishmentRank>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EstablishmentRank.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }


}

