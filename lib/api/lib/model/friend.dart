//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Friend {
  /// Returns a new [Friend] instance.
  Friend({
    required this.userId,
    required this.friendId,
  });

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `user.id`.<fk table='user' column='id'/>
  int userId;

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `user.id`.<fk table='user' column='id'/>
  int friendId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Friend &&
    other.userId == userId &&
    other.friendId == friendId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (friendId.hashCode);

  @override
  String toString() => 'Friend[userId=$userId, friendId=$friendId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'friend_id'] = this.friendId;
    return json;
  }

  /// Returns a new [Friend] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Friend? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Friend[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Friend[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Friend(
        userId: mapValueOfType<int>(json, r'user_id')!,
        friendId: mapValueOfType<int>(json, r'friend_id')!,
      );
    }
    return null;
  }

  static List<Friend> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Friend>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Friend.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Friend> mapFromJson(dynamic json) {
    final map = <String, Friend>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Friend.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Friend-objects as value to a dart map
  static Map<String, List<Friend>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Friend>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Friend.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'friend_id',
  };
}

