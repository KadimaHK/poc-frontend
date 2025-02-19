//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VwUserAnon {
  /// Returns a new [VwUserAnon] instance.
  VwUserAnon({
    this.id,
    this.uuid,
    this.iconUrl,
    this.email,
    this.name,
    this.age,
    this.gender,
    this.description,
    this.followingCount,
    this.followerCount,
  });

  /// Note: This is a Primary Key.<pk/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  /// Note: This is a Foreign Key to `image.image_url`.<fk table='image' column='image_url'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? age;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gender;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? followingCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? followerCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VwUserAnon &&
    other.id == id &&
    other.uuid == uuid &&
    other.iconUrl == iconUrl &&
    other.email == email &&
    other.name == name &&
    other.age == age &&
    other.gender == gender &&
    other.description == description &&
    other.followingCount == followingCount &&
    other.followerCount == followerCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (uuid == null ? 0 : uuid!.hashCode) +
    (iconUrl == null ? 0 : iconUrl!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (age == null ? 0 : age!.hashCode) +
    (gender == null ? 0 : gender!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (followingCount == null ? 0 : followingCount!.hashCode) +
    (followerCount == null ? 0 : followerCount!.hashCode);

  @override
  String toString() => 'VwUserAnon[id=$id, uuid=$uuid, iconUrl=$iconUrl, email=$email, name=$name, age=$age, gender=$gender, description=$description, followingCount=$followingCount, followerCount=$followerCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null)
      json[r'id'] = this.id;
    if (this.uuid != null)
      json[r'uuid'] = this.uuid;
    if (this.iconUrl != null)
      json[r'icon_url'] = this.iconUrl;
    if (this.email != null)
      json[r'email'] = this.email;
    if (this.name != null)
      json[r'name'] = this.name;
    if (this.age != null)
      json[r'age'] = this.age;
    if (this.gender != null)
      json[r'gender'] = this.gender;
    if (this.description != null)
      json[r'description'] = this.description;
    if (this.followingCount != null)
      json[r'following_count'] = this.followingCount;
    if (this.followerCount != null)
      json[r'follower_count'] = this.followerCount;
    return json;
  }

  /// Returns a new [VwUserAnon] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VwUserAnon? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return VwUserAnon(
        id: mapValueOfType<int>(json, r'id'),
        uuid: mapValueOfType<String>(json, r'uuid'),
        iconUrl: mapValueOfType<String>(json, r'icon_url'),
        email: mapValueOfType<String>(json, r'email'),
        name: mapValueOfType<String>(json, r'name'),
        age: mapValueOfType<int>(json, r'age'),
        gender: mapValueOfType<String>(json, r'gender'),
        description: mapValueOfType<String>(json, r'description'),
        followingCount: mapValueOfType<int>(json, r'following_count'),
        followerCount: mapValueOfType<int>(json, r'follower_count'),
      );
    }
    return null;
  }

  static List<VwUserAnon> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VwUserAnon>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VwUserAnon.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VwUserAnon> mapFromJson(dynamic json) {
    final map = <String, VwUserAnon>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VwUserAnon.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VwUserAnon-objects as value to a dart map
  static Map<String, List<VwUserAnon>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VwUserAnon>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VwUserAnon.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }


}

