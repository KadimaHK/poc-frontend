//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RpcSignUpPostRequest {
  /// Returns a new [RpcSignUpPostRequest] instance.
  RpcSignUpPostRequest({
    this.email,
    this.name,
    this.password,
  });

  String? email;

  String? name;

  String? password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RpcSignUpPostRequest &&
    other.email == email &&
    other.name == name &&
    other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (name.hashCode) +
    (password.hashCode);

  @override
  String toString() => 'RpcSignUpPostRequest[email=$email, name=$name, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null)
      json[r'email'] = this.email;
    if (this.name != null)
      json[r'name'] = this.name;
    if (this.password != null)
      json[r'password'] = this.password;
    return json;
  }

  /// Returns a new [RpcSignUpPostRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RpcSignUpPostRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return RpcSignUpPostRequest(
        email: mapValueOfType<String>(json, r'email'),
        name: mapValueOfType<String>(json, r'name'),
        password: mapValueOfType<String>(json, r'password'),
      );
    }
    return null;
  }

  static List<RpcSignUpPostRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RpcSignUpPostRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RpcSignUpPostRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RpcSignUpPostRequest> mapFromJson(dynamic json) {
    final map = <String, RpcSignUpPostRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RpcSignUpPostRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RpcSignUpPostRequest-objects as value to a dart map
  static Map<String, List<RpcSignUpPostRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RpcSignUpPostRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RpcSignUpPostRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }


}

