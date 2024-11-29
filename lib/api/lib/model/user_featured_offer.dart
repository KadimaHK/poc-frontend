//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserFeaturedOffer {
  /// Returns a new [UserFeaturedOffer] instance.
  UserFeaturedOffer({
    required this.userId,
    required this.featuredOfferId,
  });

  /// Note: This is a Primary Key.<pk/>
  int userId;

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `featured_offer.id`.<fk table='featured_offer' column='id'/>
  int featuredOfferId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserFeaturedOffer &&
    other.userId == userId &&
    other.featuredOfferId == featuredOfferId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (featuredOfferId.hashCode);

  @override
  String toString() => 'UserFeaturedOffer[userId=$userId, featuredOfferId=$featuredOfferId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user_id'] = this.userId;
      json[r'featured_offer_id'] = this.featuredOfferId;
    return json;
  }

  /// Returns a new [UserFeaturedOffer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserFeaturedOffer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserFeaturedOffer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserFeaturedOffer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserFeaturedOffer(
        userId: mapValueOfType<int>(json, r'user_id')!,
        featuredOfferId: mapValueOfType<int>(json, r'featured_offer_id')!,
      );
    }
    return null;
  }

  static List<UserFeaturedOffer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserFeaturedOffer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserFeaturedOffer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserFeaturedOffer> mapFromJson(dynamic json) {
    final map = <String, UserFeaturedOffer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserFeaturedOffer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserFeaturedOffer-objects as value to a dart map
  static Map<String, List<UserFeaturedOffer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserFeaturedOffer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserFeaturedOffer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'featured_offer_id',
  };
}

