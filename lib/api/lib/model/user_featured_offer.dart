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
    this.userId,
    this.featuredOfferId,
    this.isRedeemed,
    this.redeemCode,
    this.redeemedAt,
  });

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `user.id`.<fk table='user' column='id'/>
  int? userId;

  /// Note: This is a Primary Key.<pk/> This is a Foreign Key to `featured_offer.id`.<fk table='featured_offer' column='id'/>
  int? featuredOfferId;

  bool? isRedeemed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? redeemCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? redeemedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserFeaturedOffer &&
    other.userId == userId &&
    other.featuredOfferId == featuredOfferId &&
    other.isRedeemed == isRedeemed &&
    other.redeemCode == redeemCode &&
    other.redeemedAt == redeemedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (featuredOfferId.hashCode) +
    (isRedeemed.hashCode) +
    (redeemCode == null ? 0 : redeemCode!.hashCode) +
    (redeemedAt == null ? 0 : redeemedAt!.hashCode);

  @override
  String toString() => 'UserFeaturedOffer[userId=$userId, featuredOfferId=$featuredOfferId, isRedeemed=$isRedeemed, redeemCode=$redeemCode, redeemedAt=$redeemedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.userId != null)
      json[r'user_id'] = this.userId;
    if (this.featuredOfferId != null)
      json[r'featured_offer_id'] = this.featuredOfferId;
    if (this.isRedeemed != null)
      json[r'is_redeemed'] = this.isRedeemed;
    if (this.redeemCode != null)
      json[r'redeem_code'] = this.redeemCode;
    if (this.redeemedAt != null)
      json[r'redeemed_at'] = this.redeemedAt;
    return json;
  }

  /// Returns a new [UserFeaturedOffer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserFeaturedOffer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return UserFeaturedOffer(
        userId: mapValueOfType<int>(json, r'user_id'),
        featuredOfferId: mapValueOfType<int>(json, r'featured_offer_id'),
        isRedeemed: mapValueOfType<bool>(json, r'is_redeemed') ?? false,
        redeemCode: mapValueOfType<String>(json, r'redeem_code'),
        redeemedAt: mapValueOfType<String>(json, r'redeemed_at'),
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


}

