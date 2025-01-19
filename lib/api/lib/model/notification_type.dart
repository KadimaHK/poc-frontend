//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationType {
  /// Returns a new [NotificationType] instance.
  NotificationType({
    this.type,
  });

  /// Note: This is a Primary Key.<pk/>
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationType &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode);

  @override
  String toString() => 'NotificationType[type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null)
      json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [NotificationType] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationType? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return NotificationType(
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<NotificationType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationType> mapFromJson(dynamic json) {
    final map = <String, NotificationType>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationType.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationType-objects as value to a dart map
  static Map<String, List<NotificationType>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationType>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationType.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }


}

