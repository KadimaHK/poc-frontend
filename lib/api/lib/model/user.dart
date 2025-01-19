//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class User {
  /// Returns a new [User] instance.
  User({
    this.id,
    this.uuid,
    this.email,
    this.name,
    this.password,
    this.iconUrl,
    this.age,
    this.gender,
    this.description,
    this.followingCount,
    this.followerCount,
    this.bookmarkCount,
    this.reviewCount,
    this.photoCount,
    this.points,
    this.pointsExpiry,
    this.verified,
    this.createdAt,
    this.updatedAt,
  });

  /// Note: This is a Primary Key.<pk/>
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

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
  String? password;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bookmarkCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reviewCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? photoCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? points;

  String? pointsExpiry;

  bool? verified;

  String? createdAt;

  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is User &&
    other.id == id &&
    other.uuid == uuid &&
    other.email == email &&
    other.name == name &&
    other.password == password &&
    other.iconUrl == iconUrl &&
    other.age == age &&
    other.gender == gender &&
    other.description == description &&
    other.followingCount == followingCount &&
    other.followerCount == followerCount &&
    other.bookmarkCount == bookmarkCount &&
    other.reviewCount == reviewCount &&
    other.photoCount == photoCount &&
    other.points == points &&
    other.pointsExpiry == pointsExpiry &&
    other.verified == verified &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (uuid == null ? 0 : uuid!.hashCode) +
    (email.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (password == null ? 0 : password!.hashCode) +
    (iconUrl == null ? 0 : iconUrl!.hashCode) +
    (age == null ? 0 : age!.hashCode) +
    (gender == null ? 0 : gender!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (followingCount == null ? 0 : followingCount!.hashCode) +
    (followerCount == null ? 0 : followerCount!.hashCode) +
    (bookmarkCount == null ? 0 : bookmarkCount!.hashCode) +
    (reviewCount == null ? 0 : reviewCount!.hashCode) +
    (photoCount == null ? 0 : photoCount!.hashCode) +
    (points == null ? 0 : points!.hashCode) +
    (pointsExpiry.hashCode) +
    (verified.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'User[id=$id, uuid=$uuid, email=$email, name=$name, password=$password, iconUrl=$iconUrl, age=$age, gender=$gender, description=$description, followingCount=$followingCount, followerCount=$followerCount, bookmarkCount=$bookmarkCount, reviewCount=$reviewCount, photoCount=$photoCount, points=$points, pointsExpiry=$pointsExpiry, verified=$verified, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null)
      json[r'id'] = this.id;
    if (this.uuid != null)
      json[r'uuid'] = this.uuid;
    if (this.email != null)
      json[r'email'] = this.email;
    if (this.name != null)
      json[r'name'] = this.name;
    if (this.password != null)
      json[r'password'] = this.password;
    if (this.iconUrl != null)
      json[r'icon_url'] = this.iconUrl;
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
    if (this.bookmarkCount != null)
      json[r'bookmark_count'] = this.bookmarkCount;
    if (this.reviewCount != null)
      json[r'review_count'] = this.reviewCount;
    if (this.photoCount != null)
      json[r'photo_count'] = this.photoCount;
    if (this.points != null)
      json[r'points'] = this.points;
    if (this.pointsExpiry != null)
      json[r'points_expiry'] = this.pointsExpiry;
    if (this.verified != null)
      json[r'verified'] = this.verified;
    if (this.createdAt != null)
      json[r'created_at'] = this.createdAt;
    if (this.updatedAt != null)
      json[r'updated_at'] = this.updatedAt;
    return json;
  }

  /// Returns a new [User] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static User? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return User(
        id: mapValueOfType<int>(json, r'id'),
        uuid: mapValueOfType<String>(json, r'uuid'),
        email: mapValueOfType<String>(json, r'email'),
        name: mapValueOfType<String>(json, r'name'),
        password: mapValueOfType<String>(json, r'password'),
        iconUrl: mapValueOfType<String>(json, r'icon_url'),
        age: mapValueOfType<int>(json, r'age'),
        gender: mapValueOfType<String>(json, r'gender'),
        description: mapValueOfType<String>(json, r'description'),
        followingCount: mapValueOfType<int>(json, r'following_count'),
        followerCount: mapValueOfType<int>(json, r'follower_count'),
        bookmarkCount: mapValueOfType<int>(json, r'bookmark_count'),
        reviewCount: mapValueOfType<int>(json, r'review_count'),
        photoCount: mapValueOfType<int>(json, r'photo_count'),
        points: mapValueOfType<int>(json, r'points'),
        pointsExpiry: mapValueOfType<String>(json, r'points_expiry') ?? '(now() + \'1 year\'::interval)',
        verified: mapValueOfType<bool>(json, r'verified') ?? false,
        createdAt: mapValueOfType<String>(json, r'created_at') ?? 'now()',
        updatedAt: mapValueOfType<String>(json, r'updated_at') ?? 'now()',
      );
    }
    return null;
  }

  static List<User> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <User>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = User.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, User> mapFromJson(dynamic json) {
    final map = <String, User>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = User.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<User>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = User.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }


}

