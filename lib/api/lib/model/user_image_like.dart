//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserImageLike {
  /// Returns a new [UserImageLike] instance.
  UserImageLike({
    this.userId,
    this.imageUrl,
  });

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `user.id`.<fk table='user' column='id'/>
  int? userId;

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `image.image_url`.<fk table='image' column='image_url'/>
  String? imageUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserImageLike &&
    other.userId == userId &&
    other.imageUrl == imageUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (imageUrl.hashCode);

  @override
  String toString() => 'UserImageLike[userId=$userId, imageUrl=$imageUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'image_url'] = this.imageUrl;
    return json;
  }

  /// Returns a new [UserImageLike] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserImageLike? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserImageLike[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserImageLike[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserImageLike(
        userId: mapValueOfType<int>(json, r'user_id')!,
        imageUrl: mapValueOfType<String>(json, r'image_url')!,
      );
    }
    return null;
  }

  static List<UserImageLike> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserImageLike>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserImageLike.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserImageLike> mapFromJson(dynamic json) {
    final map = <String, UserImageLike>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserImageLike.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserImageLike-objects as value to a dart map
  static Map<String, List<UserImageLike>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserImageLike>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserImageLike.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'image_url',
  };
}

