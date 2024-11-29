//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EstablishmentMenu {
  /// Returns a new [EstablishmentMenu] instance.
  EstablishmentMenu({
    required this.id,
    this.name,
    this.description,
    this.price,
    this.establishmentId,
    this.menuCategoryId,
    this.createdAt = 'now()',
    this.updatedAt = 'now()',
  });

  /// Note: This is a Primary Key.<pk/>
  int id;

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
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? price;

  /// Note: This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? establishmentId;

  /// Note: This is a Foreign Key to `menu_category.id`.<fk table='menu_category' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? menuCategoryId;

  String createdAt;

  String updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EstablishmentMenu &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.price == price &&
    other.establishmentId == establishmentId &&
    other.menuCategoryId == menuCategoryId &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (establishmentId == null ? 0 : establishmentId!.hashCode) +
    (menuCategoryId == null ? 0 : menuCategoryId!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'EstablishmentMenu[id=$id, name=$name, description=$description, price=$price, establishmentId=$establishmentId, menuCategoryId=$menuCategoryId, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.establishmentId != null) {
      json[r'establishment_id'] = this.establishmentId;
    } else {
      json[r'establishment_id'] = null;
    }
    if (this.menuCategoryId != null) {
      json[r'menu_category_id'] = this.menuCategoryId;
    } else {
      json[r'menu_category_id'] = null;
    }
      json[r'created_at'] = this.createdAt;
      json[r'updated_at'] = this.updatedAt;
    return json;
  }

  /// Returns a new [EstablishmentMenu] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EstablishmentMenu? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EstablishmentMenu[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EstablishmentMenu[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EstablishmentMenu(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        price: num.parse('${json[r'price']}'),
        establishmentId: mapValueOfType<int>(json, r'establishment_id'),
        menuCategoryId: mapValueOfType<int>(json, r'menu_category_id'),
        createdAt: mapValueOfType<String>(json, r'created_at') ?? 'now()',
        updatedAt: mapValueOfType<String>(json, r'updated_at') ?? 'now()',
      );
    }
    return null;
  }

  static List<EstablishmentMenu> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EstablishmentMenu>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EstablishmentMenu.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EstablishmentMenu> mapFromJson(dynamic json) {
    final map = <String, EstablishmentMenu>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EstablishmentMenu.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EstablishmentMenu-objects as value to a dart map
  static Map<String, List<EstablishmentMenu>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EstablishmentMenu>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EstablishmentMenu.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

