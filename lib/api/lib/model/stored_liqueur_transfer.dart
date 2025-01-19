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
    this.id,
    this.storedLiqueurId,
    this.fromUserId,
    this.toUserId,
    this.isAccepted,
    this.createdAt,
  });

  /// Note: This is a Primary Key.<pk/>
  int? id;

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

  bool? isAccepted;

  String? createdAt;

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
    if (this.id != null)
      json[r'id'] = this.id;
    if (this.storedLiqueurId != null)
      json[r'stored_liqueur_id'] = this.storedLiqueurId;
    if (this.fromUserId != null)
      json[r'from_user_id'] = this.fromUserId;
    if (this.toUserId != null)
      json[r'to_user_id'] = this.toUserId;
    if (this.isAccepted != null)
      json[r'is_accepted'] = this.isAccepted;
    if (this.createdAt != null)
      json[r'created_at'] = this.createdAt;
    return json;
  }

  /// Returns a new [StoredLiqueurTransfer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StoredLiqueurTransfer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return StoredLiqueurTransfer(
        id: mapValueOfType<int>(json, r'id'),
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


}

