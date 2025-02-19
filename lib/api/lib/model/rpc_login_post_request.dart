//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RpcLoginPostRequest {
  /// Returns a new [RpcLoginPostRequest] instance.
  RpcLoginPostRequest({
    this.loginEmail,
    this.loginPassword,
  });

  String? loginEmail;

  String? loginPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RpcLoginPostRequest &&
    other.loginEmail == loginEmail &&
    other.loginPassword == loginPassword;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (loginEmail.hashCode) +
    (loginPassword.hashCode);

  @override
  String toString() => 'RpcLoginPostRequest[loginEmail=$loginEmail, loginPassword=$loginPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.loginEmail != null)
      json[r'login_email'] = this.loginEmail;
    if (this.loginPassword != null)
      json[r'login_password'] = this.loginPassword;
    return json;
  }

  /// Returns a new [RpcLoginPostRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RpcLoginPostRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return RpcLoginPostRequest(
        loginEmail: mapValueOfType<String>(json, r'login_email'),
        loginPassword: mapValueOfType<String>(json, r'login_password'),
      );
    }
    return null;
  }

  static List<RpcLoginPostRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RpcLoginPostRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RpcLoginPostRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RpcLoginPostRequest> mapFromJson(dynamic json) {
    final map = <String, RpcLoginPostRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RpcLoginPostRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RpcLoginPostRequest-objects as value to a dart map
  static Map<String, List<RpcLoginPostRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RpcLoginPostRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RpcLoginPostRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }


}

