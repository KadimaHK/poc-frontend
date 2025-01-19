//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Follow {
  /// Returns a new [Follow] instance.
  Follow({
    this.follower,
    this.following,
  });

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `user.id`.<fk table='user' column='id'/>
  int? follower;

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `user.id`.<fk table='user' column='id'/>
  int? following;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Follow &&
    other.follower == follower &&
    other.following == following;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (follower.hashCode) +
    (following.hashCode);

  @override
  String toString() => 'Follow[follower=$follower, following=$following]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.follower != null)
      json[r'follower'] = this.follower;
    if (this.following != null)
      json[r'following'] = this.following;
    return json;
  }

  /// Returns a new [Follow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Follow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return Follow(
        follower: mapValueOfType<int>(json, r'follower'),
        following: mapValueOfType<int>(json, r'following'),
      );
    }
    return null;
  }

  static List<Follow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Follow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Follow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Follow> mapFromJson(dynamic json) {
    final map = <String, Follow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Follow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Follow-objects as value to a dart map
  static Map<String, List<Follow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Follow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Follow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }


}

