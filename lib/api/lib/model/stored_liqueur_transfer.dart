//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StoredLiqueurTransfer {
  /// Returns a new [StoredLiqueurTransfer] instance.
  StoredLiqueurTransfer({
    required this.id,
    this.storedLiqueurId,
    this.fromUserId,
    this.toUserId,
    this.isAccepted = false,
    this.createdAt = 'now()',
  });

  /// Note: This is a Primary Key.<pk/>
  int id;

  /// Note: This is a Foreign Key to `stored_liqueur.id`.<fk table='stored_liqueur' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? storedLiqueurId;

  /// Note: This is a Foreign Key to `user.id`.<fk table='user' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fromUserId;

  /// Note: This is a Foreign Key to `user.id`.<fk table='user' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? toUserId;

  bool isAccepted;

  String createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StoredLiqueurTransfer &&
    other.id == id &&
    other.storedLiqueurId == storedLiqueurId &&
    other.fromUserId == fromUserId &&
    other.toUserId == toUserId &&
    other.isAccepted == isAccepted &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (storedLiqueurId == null ? 0 : storedLiqueurId!.hashCode) +
    (fromUserId == null ? 0 : fromUserId!.hashCode) +
    (toUserId == null ? 0 : toUserId!.hashCode) +
    (isAccepted.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'StoredLiqueurTransfer[id=$id, storedLiqueurId=$storedLiqueurId, fromUserId=$fromUserId, toUserId=$toUserId, isAccepted=$isAccepted, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.storedLiqueurId != null) {
      json[r'stored_liqueur_id'] = this.storedLiqueurId;
    } else {
      json[r'stored_liqueur_id'] = null;
    }
    if (this.fromUserId != null) {
      json[r'from_user_id'] = this.fromUserId;
    } else {
      json[r'from_user_id'] = null;
    }
    if (this.toUserId != null) {
      json[r'to_user_id'] = this.toUserId;
    } else {
      json[r'to_user_id'] = null;
    }
      json[r'is_accepted'] = this.isAccepted;
      json[r'created_at'] = this.createdAt;
    return json;
  }

  /// Returns a new [StoredLiqueurTransfer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StoredLiqueurTransfer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StoredLiqueurTransfer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StoredLiqueurTransfer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StoredLiqueurTransfer(
        id: mapValueOfType<int>(json, r'id')!,
        storedLiqueurId: mapValueOfType<int>(json, r'stored_liqueur_id'),
        fromUserId: mapValueOfType<int>(json, r'from_user_id'),
        toUserId: mapValueOfType<int>(json, r'to_user_id'),
        isAccepted: mapValueOfType<bool>(json, r'is_accepted') ?? false,
        createdAt: mapValueOfType<String>(json, r'created_at') ?? 'now()',
      );
    }
    return null;
  }

  static List<StoredLiqueurTransfer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoredLiqueurTransfer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoredLiqueurTransfer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StoredLiqueurTransfer> mapFromJson(dynamic json) {
    final map = <String, StoredLiqueurTransfer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StoredLiqueurTransfer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StoredLiqueurTransfer-objects as value to a dart map
  static Map<String, List<StoredLiqueurTransfer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StoredLiqueurTransfer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StoredLiqueurTransfer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

