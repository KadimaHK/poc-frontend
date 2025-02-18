//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserRole {
  /// Returns a new [UserRole] instance.
  UserRole({
    this.userId,
    this.roleName,
  });

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `user.id`.<fk table='user' column='id'/>
  int? userId;

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `role.name`.<fk table='role' column='name'/>
  String? roleName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserRole &&
    other.userId == userId &&
    other.roleName == roleName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (roleName.hashCode);

  @override
  String toString() => 'UserRole[userId=$userId, roleName=$roleName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.userId != null)
      json[r'user_id'] = this.userId;
    if (this.roleName != null)
      json[r'role_name'] = this.roleName;
    return json;
  }

  /// Returns a new [UserRole] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserRole? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return UserRole(
        userId: mapValueOfType<int>(json, r'user_id'),
        roleName: mapValueOfType<String>(json, r'role_name'),
      );
    }
    return null;
  }

  static List<UserRole> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserRole>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserRole.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserRole> mapFromJson(dynamic json) {
    final map = <String, UserRole>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserRole.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserRole-objects as value to a dart map
  static Map<String, List<UserRole>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserRole>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserRole.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }


}

