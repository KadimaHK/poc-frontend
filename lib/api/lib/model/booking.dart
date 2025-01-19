//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Booking {
  /// Returns a new [Booking] instance.
  Booking({
    this.id,
    this.userId,
    this.establishmentId,
    this.reservationStart,
    this.reservationEnd,
    this.createdAt,
    this.updatedAt,
  });

  /// Note: This is a Primary Key.<pk/>
  int? id;

  /// Note: This is a Foreign Key to `user.id`.<fk table='user' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userId;

  /// Note: This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? establishmentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reservationStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reservationEnd;

  String? createdAt;

  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Booking &&
    other.id == id &&
    other.userId == userId &&
    other.establishmentId == establishmentId &&
    other.reservationStart == reservationStart &&
    other.reservationEnd == reservationEnd &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (establishmentId == null ? 0 : establishmentId!.hashCode) +
    (reservationStart == null ? 0 : reservationStart!.hashCode) +
    (reservationEnd == null ? 0 : reservationEnd!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Booking[id=$id, userId=$userId, establishmentId=$establishmentId, reservationStart=$reservationStart, reservationEnd=$reservationEnd, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null)
      json[r'id'] = this.id;
    if (this.userId != null)
      json[r'user_id'] = this.userId;
    if (this.establishmentId != null)
      json[r'establishment_id'] = this.establishmentId;
    if (this.reservationStart != null)
      json[r'reservation_start'] = this.reservationStart;
    if (this.reservationEnd != null)
      json[r'reservation_end'] = this.reservationEnd;
    if (this.createdAt != null)
      json[r'created_at'] = this.createdAt;
    if (this.updatedAt != null)
      json[r'updated_at'] = this.updatedAt;
    return json;
  }

  /// Returns a new [Booking] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Booking? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return Booking(
        id: mapValueOfType<int>(json, r'id'),
        userId: mapValueOfType<int>(json, r'user_id'),
        establishmentId: mapValueOfType<int>(json, r'establishment_id'),
        reservationStart: mapValueOfType<String>(json, r'reservation_start'),
        reservationEnd: mapValueOfType<String>(json, r'reservation_end'),
        createdAt: mapValueOfType<String>(json, r'created_at') ?? 'now()',
        updatedAt: mapValueOfType<String>(json, r'updated_at') ?? 'now()',
      );
    }
    return null;
  }

  static List<Booking> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Booking>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Booking.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Booking> mapFromJson(dynamic json) {
    final map = <String, Booking>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Booking.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Booking-objects as value to a dart map
  static Map<String, List<Booking>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Booking>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Booking.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }


}

