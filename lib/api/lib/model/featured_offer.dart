//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FeaturedOffer {
  /// Returns a new [FeaturedOffer] instance.
  FeaturedOffer({
    required this.id,
    this.title,
    this.voucherCode,
    this.startDate,
    this.expiryDate,
    this.percentageDiscount,
    this.details,
    this.description,
    this.redemptionPeriod,
    this.howToRedeem,
    this.isGlobal,
    this.imageUrl,
    this.establishmentId,
  });

  /// Note: This is a Primary Key.<pk/>
  int id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? voucherCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expiryDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? percentageDiscount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? details;

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
  String? redemptionPeriod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? howToRedeem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGlobal;

  /// Note: This is a Foreign Key to `image.image_url`.<fk table='image' column='image_url'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageUrl;

  /// Note: This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? establishmentId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FeaturedOffer &&
    other.id == id &&
    other.title == title &&
    other.voucherCode == voucherCode &&
    other.startDate == startDate &&
    other.expiryDate == expiryDate &&
    other.percentageDiscount == percentageDiscount &&
    other.details == details &&
    other.description == description &&
    other.redemptionPeriod == redemptionPeriod &&
    other.howToRedeem == howToRedeem &&
    other.isGlobal == isGlobal &&
    other.imageUrl == imageUrl &&
    other.establishmentId == establishmentId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (voucherCode == null ? 0 : voucherCode!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (expiryDate == null ? 0 : expiryDate!.hashCode) +
    (percentageDiscount == null ? 0 : percentageDiscount!.hashCode) +
    (details == null ? 0 : details!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (redemptionPeriod == null ? 0 : redemptionPeriod!.hashCode) +
    (howToRedeem == null ? 0 : howToRedeem!.hashCode) +
    (isGlobal == null ? 0 : isGlobal!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (establishmentId == null ? 0 : establishmentId!.hashCode);

  @override
  String toString() => 'FeaturedOffer[id=$id, title=$title, voucherCode=$voucherCode, startDate=$startDate, expiryDate=$expiryDate, percentageDiscount=$percentageDiscount, details=$details, description=$description, redemptionPeriod=$redemptionPeriod, howToRedeem=$howToRedeem, isGlobal=$isGlobal, imageUrl=$imageUrl, establishmentId=$establishmentId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.voucherCode != null) {
      json[r'voucher_code'] = this.voucherCode;
    } else {
      json[r'voucher_code'] = null;
    }
    if (this.startDate != null) {
      json[r'start_date'] = this.startDate;
    } else {
      json[r'start_date'] = null;
    }
    if (this.expiryDate != null) {
      json[r'expiry_date'] = this.expiryDate;
    } else {
      json[r'expiry_date'] = null;
    }
    if (this.percentageDiscount != null) {
      json[r'percentage_discount'] = this.percentageDiscount;
    } else {
      json[r'percentage_discount'] = null;
    }
    if (this.details != null) {
      json[r'details'] = this.details;
    } else {
      json[r'details'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.redemptionPeriod != null) {
      json[r'redemption_period'] = this.redemptionPeriod;
    } else {
      json[r'redemption_period'] = null;
    }
    if (this.howToRedeem != null) {
      json[r'how_to_redeem'] = this.howToRedeem;
    } else {
      json[r'how_to_redeem'] = null;
    }
    if (this.isGlobal != null) {
      json[r'is_global'] = this.isGlobal;
    } else {
      json[r'is_global'] = null;
    }
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    if (this.establishmentId != null) {
      json[r'establishment_id'] = this.establishmentId;
    } else {
      json[r'establishment_id'] = null;
    }
    return json;
  }

  /// Returns a new [FeaturedOffer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FeaturedOffer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FeaturedOffer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FeaturedOffer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FeaturedOffer(
        id: mapValueOfType<int>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title'),
        voucherCode: mapValueOfType<String>(json, r'voucher_code'),
        startDate: mapValueOfType<String>(json, r'start_date'),
        expiryDate: mapValueOfType<String>(json, r'expiry_date'),
        percentageDiscount: num.tryParse('${json[r'percentage_discount']}'),
        details: mapValueOfType<String>(json, r'details'),
        description: mapValueOfType<String>(json, r'description'),
        redemptionPeriod: mapValueOfType<String>(json, r'redemption_period'),
        howToRedeem: mapValueOfType<String>(json, r'how_to_redeem'),
        isGlobal: mapValueOfType<bool>(json, r'is_global'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        establishmentId: mapValueOfType<int>(json, r'establishment_id'),
      );
    }
    return null;
  }

  static List<FeaturedOffer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FeaturedOffer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FeaturedOffer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FeaturedOffer> mapFromJson(dynamic json) {
    final map = <String, FeaturedOffer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FeaturedOffer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FeaturedOffer-objects as value to a dart map
  static Map<String, List<FeaturedOffer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FeaturedOffer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FeaturedOffer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

