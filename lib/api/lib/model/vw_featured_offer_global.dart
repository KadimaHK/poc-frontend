//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VwFeaturedOfferGlobal {
  /// Returns a new [VwFeaturedOfferGlobal] instance.
  VwFeaturedOfferGlobal({
    this.id,
    this.title,
    this.voucherCode,
    this.expiry,
    this.details,
    this.description,
    this.redemptionPeriod,
    this.howToRedeem,
    this.isGlobal,
    this.imageId,
    this.establishmentId,
    this.baseUrl,
    this.fileName,
    this.location,
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
  String? expiry;

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

  /// Note: This is a Foreign Key to `image.id`.<fk table='image' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? imageId;

  /// Note: This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? establishmentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? baseUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? location;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VwFeaturedOfferGlobal &&
    other.id == id &&
    other.title == title &&
    other.voucherCode == voucherCode &&
    other.expiry == expiry &&
    other.details == details &&
    other.description == description &&
    other.redemptionPeriod == redemptionPeriod &&
    other.howToRedeem == howToRedeem &&
    other.isGlobal == isGlobal &&
    other.imageId == imageId &&
    other.establishmentId == establishmentId &&
    other.baseUrl == baseUrl &&
    other.fileName == fileName &&
    other.location == location;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (voucherCode == null ? 0 : voucherCode!.hashCode) +
    (expiry == null ? 0 : expiry!.hashCode) +
    (details == null ? 0 : details!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (redemptionPeriod == null ? 0 : redemptionPeriod!.hashCode) +
    (howToRedeem == null ? 0 : howToRedeem!.hashCode) +
    (isGlobal == null ? 0 : isGlobal!.hashCode) +
    (imageId == null ? 0 : imageId!.hashCode) +
    (establishmentId == null ? 0 : establishmentId!.hashCode) +
    (baseUrl == null ? 0 : baseUrl!.hashCode) +
    (fileName == null ? 0 : fileName!.hashCode) +
    (location == null ? 0 : location!.hashCode);

  @override
  String toString() => 'VwFeaturedOfferGlobal[id=$id, title=$title, voucherCode=$voucherCode, expiry=$expiry, details=$details, description=$description, redemptionPeriod=$redemptionPeriod, howToRedeem=$howToRedeem, isGlobal=$isGlobal, imageId=$imageId, establishmentId=$establishmentId, baseUrl=$baseUrl, fileName=$fileName, location=$location]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
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
    if (this.expiry != null) {
      json[r'expiry'] = this.expiry;
    } else {
      json[r'expiry'] = null;
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
    if (this.imageId != null) {
      json[r'image_id'] = this.imageId;
    } else {
      json[r'image_id'] = null;
    }
    if (this.establishmentId != null) {
      json[r'establishment_id'] = this.establishmentId;
    } else {
      json[r'establishment_id'] = null;
    }
    if (this.baseUrl != null) {
      json[r'base_url'] = this.baseUrl;
    } else {
      json[r'base_url'] = null;
    }
    if (this.fileName != null) {
      json[r'file_name'] = this.fileName;
    } else {
      json[r'file_name'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    return json;
  }

  /// Returns a new [VwFeaturedOfferGlobal] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VwFeaturedOfferGlobal? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VwFeaturedOfferGlobal[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VwFeaturedOfferGlobal[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VwFeaturedOfferGlobal(
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        voucherCode: mapValueOfType<String>(json, r'voucher_code'),
        expiry: mapValueOfType<String>(json, r'expiry'),
        details: mapValueOfType<String>(json, r'details'),
        description: mapValueOfType<String>(json, r'description'),
        redemptionPeriod: mapValueOfType<String>(json, r'redemption_period'),
        howToRedeem: mapValueOfType<String>(json, r'how_to_redeem'),
        isGlobal: mapValueOfType<bool>(json, r'is_global'),
        imageId: mapValueOfType<int>(json, r'image_id'),
        establishmentId: mapValueOfType<int>(json, r'establishment_id'),
        baseUrl: mapValueOfType<String>(json, r'base_url'),
        fileName: mapValueOfType<String>(json, r'file_name'),
        location: mapValueOfType<String>(json, r'location'),
      );
    }
    return null;
  }

  static List<VwFeaturedOfferGlobal> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VwFeaturedOfferGlobal>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VwFeaturedOfferGlobal.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VwFeaturedOfferGlobal> mapFromJson(dynamic json) {
    final map = <String, VwFeaturedOfferGlobal>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VwFeaturedOfferGlobal.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VwFeaturedOfferGlobal-objects as value to a dart map
  static Map<String, List<VwFeaturedOfferGlobal>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VwFeaturedOfferGlobal>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VwFeaturedOfferGlobal.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

