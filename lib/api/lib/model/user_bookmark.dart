//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserBookmark {
  /// Returns a new [UserBookmark] instance.
  UserBookmark({
    required this.userId,
    required this.establishmentId,
    this.createdAt = 'now()',
  });

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `user.id`.<fk table='user' column='id'/>
  int userId;

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/>
  int establishmentId;

  String createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserBookmark &&
    other.userId == userId &&
    other.establishmentId == establishmentId &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (establishmentId.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'UserBookmark[userId=$userId, establishmentId=$establishmentId, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'establishment_id'] = this.establishmentId;
      json[r'created_at'] = this.createdAt;
    return json;
  }

  /// Returns a new [UserBookmark] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserBookmark? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserBookmark[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserBookmark[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserBookmark(
        userId: mapValueOfType<int>(json, r'user_id')!,
        establishmentId: mapValueOfType<int>(json, r'establishment_id')!,
        createdAt: mapValueOfType<String>(json, r'created_at') ?? 'now()',
      );
    }
    return null;
  }

  static List<UserBookmark> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserBookmark>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserBookmark.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserBookmark> mapFromJson(dynamic json) {
    final map = <String, UserBookmark>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserBookmark.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserBookmark-objects as value to a dart map
  static Map<String, List<UserBookmark>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserBookmark>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserBookmark.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'establishment_id',
  };
}

